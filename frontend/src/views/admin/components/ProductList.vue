<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100">
    <div class="d-flex flex-row title-box">
      <div class="list-title flex-grow-1 text-start">Quản lý sản phẩm</div>
    </div>
    <div class="d-flex flex-row toolbar-box justify-content-between">
      <div class="left-toolbar d-flex flex-row gap-2">
        <div class="m-search_form flex-row d-flex align-items-center d-flex">
          <InputText type="search" v-model="value" class="ms-input_search w-100" placeholder="Tìm kiếm"/>
          <div class="icon24 icon search-right search"></div>
        </div>
        <div class="filter-group">
          <Button
              @click="toggleFilter"
              class="ms-btn btn-secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
            <div class="icon24 filter"></div>
            <div class="">Bộ lọc</div>
          </Button>
          <OverlayPanel ref="op" class="filter-overlay">
            <div class="filter-box">
              <div class="box-header">
                <span class="title">
                  <span class="title">Lọc sản phẩm</span>
                </span>
              </div>
              <div class="box-content flex-column">
                <div class="group-form_box mt-2">
                  <div class="label d-flex align-items-center pt-0">
                    {{ MESSAGE.CATEGORY }}
                  </div>
                  <div class="mt-2">
                    <TreeSelect v-model="filter.category" :options="categories"
                                label="name"
                                placeholder="Vui lòng chọn một hạng mục"/>
                  </div>
                  <div class="ms-error-text">
                  </div>
                </div>
                <div class="group-form_box">
                  <div class="label d-flex align-items-center">
                    {{ MESSAGE.PRICE }}
                  </div>
                  <div class="mt-2 d-flex gap-3">
                    <InputNumber v-model="filter.minPrice" inputClass="text-start" class="flex-grow-1"
                                 mode="currency"
                                 :max="999999999"
                                 :placeholder="MESSAGE.MINIMUM_PRICE"
                                 currency="VND" locale="vi"/>
                    <div class="line" style="color:rgba(0,0,0,.25)">_</div>
                    <InputNumber v-model="filter.maxPrice" inputClass="text-start" class="flex-grow-1"
                                 mode="currency"
                                 :max="999999999"
                                 :placeholder="MESSAGE.MAXIMUM_PRICE"
                                 currency="VND" locale="vi"/>
                  </div>
                  <div class="ms-error-text">
                  </div>
                </div>
                <div class="group-form_box mt-2">
                  <div class="label d-flex align-items-center pt-0">
                    {{ MESSAGE.INVENTORY_STATUS }}
                  </div>
                  <div class="mt-2 d-flex gap-3">
                    <div v-for="item in listInventory" :key="item.key" class="d-flex gap-1 align-items-center pointer">
                      <RadioButton v-model="filter.inventoryStatus" :inputId="item.key" name="dynamic"
                                   :value="item.key"/>
                      <label :for="item.key" class="ml-2 pointer">{{ item.name }}</label>
                    </div>
                  </div>
                  <div class="ms-error-text">
                  </div>
                </div>
              </div>
              <div class="box-footer">
                <div class="right-content d-flex gap-2">
                  <Button
                      @click="toggleFilter"
                      class="ms-btn btn-secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                    <div class="">{{ MESSAGE.CANCEL }}</div>
                  </Button>
                  <Button
                      @click="$router.push({name: 'add_product'})"
                      class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                    <div class="fw-semibold">{{ MESSAGE.APPLY }}</div>
                  </Button>
                </div>
              </div>
            </div>
          </OverlayPanel>
        </div>
      </div>
      <div class="right-toolbar d-flex flex-row">
        <Button
            @click="$router.push({name: 'add_product'})"
            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="icon24 add-white"></div>
          <div class="fw-semibold">Thêm sản phẩm</div>
        </Button>
      </div>
    </div>
    <div class="box list-content flex-grow-1 flex-row mw-100">
      <DataTable v-model:selection="selectedProduct" paginator :rows="10" :rowsPerPageOptions="[5, 10, 20, 50]"
                 class="flex1 flex-column mw-100"
                 dataKey="id"
                 :class="{ 'loading': isLoading }" :loading="isLoading"
                 scrollable
                 :value="isLoading ? Array.from({ length: 8 }, () => ({ ...{} })) : products"
                 @rowDblclick="onRowSelect($event.data)" tableStyle="min-width: 100%" rowHover>
        <template #paginatorstart>
          <Button type="button" icon="pi pi-refresh" text/>
        </template>
        <template #paginatorend>
          bản ghi/trang
        </template>
        <template #empty>
          <div class="d-flex flex-column p-24 justify-content-center align-items-center">
            <div class="icon-empty_table"></div>
            <div>Không tìm thấy kết quả nào</div>
          </div>
        </template>
        <Column selectionMode="multiple"
                headerStyle="min-width: 60px; max-width: 60px; width: 60px; margin-right: 2px"></Column>
        <Column field="DepartmentCode" style="min-width: 250px" header="Sản phẩm">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 160px" dataKey="id" header="Số lượng">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 180px" dataKey="id" header="Giá bán lẻ">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="updated_at" style="min-width: 180px" dataKey="id" header="Đã cập nhật">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column dataKey="id" header="Trạng thái" style="min-width: 250px">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading">
              <div class="d-flex status-ctn max-content" v-if="data['is_exist']"
                   style="background-color: rgb(229, 250, 237);">
                <div class="status-dot" style="background-color: rgb(0, 200, 83);"></div>
                <div class="status-text" style="color: rgb(0, 200, 83);">Đang sử dụng</div>
              </div>
              <div class="d-flex status-ctn max-content" v-else
                   style="background-color: rgb(254, 243, 231);">
                <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                <div class="status-text" style="color: rgb(243, 141, 21);">Không sử dụng</div>
              </div>
            </div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column frozen alignFrozen="right" style="min-width: 100px; text-align: center;" header="Thao tác">
          <template #body="slotProps">
            <div class="row-actions flex-row" v-if="!isLoading">
              <div class="item" @click="onRowSelect(slotProps.data)">
                <div class="v-popover popover">
                  <div class="trigger">
                    <div class="icon24 edit"></div>
                  </div>
                </div>
              </div>
              <div class="item" @click="deleteRowSelect(slotProps.data)">
                <div class="v-popover popover">
                  <div class="icon24 delete"></div>
                </div>
              </div>
            </div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>

      </DataTable>
    </div>
  </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import Skeleton from 'primevue/skeleton';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Checkbox from "primevue/checkbox";
import OverlayPanel from 'primevue/overlaypanel';
import Dropdown from "primevue/dropdown";
import InputNumber from "primevue/inputnumber";
import TreeSelect from "primevue/treeselect";
import RadioButton from 'primevue/radiobutton';
import {getProduct} from "@/api/product";
import {getCategory} from "@/api/category";
import {MESSAGE, TIMEOUT} from "@/common/enums";

export default {
  computed: {
    MESSAGE() {
      return MESSAGE
    }
  },
  components: {
    Button,
    InputText,
    Skeleton,
    DataTable,
    Column,
    Checkbox,
    OverlayPanel,
    Dropdown,
    InputNumber,
    TreeSelect,
    RadioButton,
  },

  data() {
    return {
      isLoading: false,
      products: [],
      categories: [],
      selectedProduct: null,
      listInventory: [
        {
          key: 1,
          name: 'Tất cả'
        },
        {
          key: 2,
          name: 'Hết hàng'
        },
        {
          key: 3,
          name: 'Còn ít hàng'
        },
      ],
      filter: {
        category: null,
        minPrice: null,
        maxPrice: null,
        inventoryStatus: 1,
      },
    }
  },

  methods: {
    toggleFilter(event) {
      this.$refs.op.toggle(event);
    },

    loadProduct() {
      this.isLoading = true;
      getProduct().then(res => {
        this.products = res.data
      }).catch(error => {
        console.log(error)
      }).finally(() => {
        setTimeout(() => {
          this.isLoading = false;
        }, TIMEOUT.LOADING)
      })
    },

    /**
     * Lấy dữ liệu danh mục sản phẩm
     */
    loadCategory() {
      getCategory().then(res => {
            this.categories = res.data;
          }
      )
          .catch(error => {
            console.log(error)
          })
    },
  },

  created() {
    this.loadProduct();
    this.loadCategory();
  }
}
</script>

<style lang="scss">


</style>
