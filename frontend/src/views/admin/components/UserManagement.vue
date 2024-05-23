<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100 ms-user-management">
    <div class="d-flex flex-row title-box align-items-center gap-2">
      <div class="icon24 back cursor-pointer" @click="this.$router.go(-1)"></div>
      <div class="list-title flex-grow-1 text-start">Quản lý người dùng</div>
    </div>
    <TabView class="flex1 d-flex flex-column" :pt="{
     panelContainer: { class: 'flex1 d-flex flex-column' },
    }">
      <TabPanel :header="MESSAGE.USER_ADDED">
        <header class="flex pb-24">
          <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
            {{ MESSAGE.USER_ADDED }}
          </h3>
        </header>
        <div class="d-flex gap-2 mb-5 align-items-center">
          <div class="d-flex gap-3 flex-grow-1">
            <MultiSelect
                v-model="selectedRoles"
                :options="roles.roles"
                :showToggleAll="false"
                optionLabel="role_name"
                :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
                :placeholder="MESSAGE.ROLES"
                display="chip"
                class="ms-category max-w-266 text-start"></MultiSelect>
            <InputText v-model="searchEmail"
                       :placeholder="MESSAGE.ENTER_YOUR_EMAIL_ADDRESS"></InputText>
          </div>
          <div class="theme-arco-divider-vertical mx-16"></div>
          <div>
            <Button
                class="ms-btn secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
              <div class="fw-medium">Đặt lại</div>
            </Button>
          </div>
        </div>
        <div class="flex1 flex-grow-1">
          <DataTable :rows="10" class="flex1 flex-column mh-100 mw-100"
                     :class="{ 'loading': isLoading }" :loading="isLoading"
                     scrollable
                     :value="isLoading ? Array.from({ length: 10 }, () => ({ ...{} })) : data"
                     @rowDblclick="onRowSelect($event.data)" tableStyle="min-width: 100%" rowHover>
            <template #paginatorstart>
              <Button type="button" icon="pi pi-refresh" text/>
            </template>
            <template #paginatorend>
              bản ghi/trang
            </template>
            <template #empty>
              <div class="d-flex flex-column p-24 justify-content-center align-items-center">
                <img :src="require('@public/assets/images/empty_table.svg')" alt="">
                <div>Không tìm thấy kết quả nào</div>
              </div>
            </template>
            <Column field="warehouse_name" style="min-width: 200px" :header="MESSAGE.USER_EMAIL">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading"> {{ data[field] }}</div>
                <div v-else>
                  <Skeleton height="18px" class="mb-2"></Skeleton>
                </div>
              </template>
            </Column>
            <Column field="detailed_address" style="min-width: 500px" dataKey="id" :header="MESSAGE.ROLES">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading">
                  <div v-if="data[field]">
                    {{ data[field] }}
                  </div>
                  <div class="d-flex status-ctn max-content" v-else
                       style="background-color: rgb(254, 243, 231);">
                    <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                    <div class="status-text" style="color: rgb(243, 141, 21);">Chưa cài đặt</div>
                  </div>
                </div>
                <div v-else>
                  <Skeleton height="18px" class="mb-2"></Skeleton>
                </div>
              </template>
            </Column>
            <Column field="warehouse_contact" style="min-width: 180px" dataKey="id" :header="MESSAGE.ACT">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading">
                  <div v-if="data[field]">
                    {{ data[field] }}
                  </div>
                  <div class="d-flex status-ctn max-content" v-else
                       style="background-color: rgb(254, 243, 231);">
                    <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                    <div class="status-text" style="color: rgb(243, 141, 21);">Chưa cài đặt</div>
                  </div>
                </div>
                <div v-else>
                  <Skeleton height="18px" class="mb-2"></Skeleton>
                </div>
              </template>
            </Column>
          </DataTable>
        </div>
      </TabPanel>
      <TabPanel :header="MESSAGE.ROLE_ADDED">
        <header class="flex pb-24">
          <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
            {{ MESSAGE.ROLE_ADDED }}
          </h3>
        </header>
        <div class="d-flex gap-2 mb-5 align-items-center">
          <div class="d-flex gap-3 flex-grow-1">
            <SelectButton v-model="selectedTypeRole" @change="changeRoleType" :options="roles.types"
                          class="ms-btn ms-selectbutton_roles"
                          optionLabel="description" multiple aria-labelledby="multiple"/>
          </div>
          <div class="theme-arco-divider-vertical mx-16"></div>
          <div>
            <Button
                @click="resetRoleSearch"
                class="ms-btn secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
              <div class="fw-medium">Đặt lại</div>
            </Button>
          </div>
        </div>
        <div class="flex1 flex-grow-1">
          <DataTable :rows="10" class="flex-column mw-100 mh-100 ms-table_roles"
                     :class="{ 'loading': isLoading }" :loading="isLoading"
                     scrollable
                     :value="isLoading ? Array.from({ length: 10 }, () => ({ ...{} })) : roles.roleSearch"
                     @rowDblclick="onRowSelect($event.data)" tableStyle="min-width: 100%" rowHover>
            <template #paginatorstart>
              <Button type="button" icon="pi pi-refresh" text/>
            </template>
            <template #paginatorend>
              bản ghi/trang
            </template>
            <template #empty>
              <div class="d-flex flex-column p-24 justify-content-center align-items-center">
                <img :src="require('@public/assets/images/empty_table.svg')" alt="">
                <div>Không tìm thấy kết quả nào</div>
              </div>
            </template>
            <Column field="role_name" style="min-width: 200px; max-width: 200px" :header="MESSAGE.ROLE_NAME">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading" class="truncate-text-3"> {{ data[field] }}</div>
                <div v-else>
                  <Skeleton height="18px" class="mb-2"></Skeleton>
                </div>
              </template>
            </Column>
            <Column field="description" style="min-width: 170px; max-width: 170px" dataKey="id"
                    :header="MESSAGE.DESCRIPTION">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading" class="truncate-text-3" v-tooltip="data[field]">
                  {{ data[field] }}
                </div>
                <div v-else>
                  <Skeleton height="18px" class="mb-2"></Skeleton>
                </div>
              </template>
            </Column>
            <Column field="role_type" style="min-width: 170px; max-width: 170px" dataKey="id" :header="MESSAGE.TYPE">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading" class="truncate-text-3">
                  {{ data[field] }}
                </div>
                <div v-else>
                  <Skeleton height="18px" class="mb-2"></Skeleton>
                </div>
              </template>
            </Column>
            <Column frozen align-frozen="right" field="permissions" style="min-width: 300px; max-width: 300px"
                    dataKey="id" :header="MESSAGE.PERMISSION">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading" class="truncate-text-3" v-tooltip="data[field]">
                  {{ data[field] }}
                </div>
                <div v-else>
                  <Skeleton height="18px" class="mb-2"></Skeleton>
                </div>
              </template>
            </Column>
          </DataTable>
        </div>
      </TabPanel>
    </TabView>
  </div>
</template>

<script>
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import Skeleton from 'primevue/skeleton';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import SelectButton from 'primevue/selectbutton';
import Dropdown from 'primevue/dropdown';
import MultiSelect from 'primevue/multiselect';
import {getRoles, getRoleByType} from "@/api/role";
import {MESSAGE} from "@/common/enums";

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
    TabView,
    TabPanel,
    Dropdown,
    MultiSelect,
    SelectButton,
  },
  data() {
    return {
      isLoading: false,
      data: [],
      selectedRoles: null,
      searchEmail: null,
      selectedTypeRole: [],
      roles: {
        roles: [],
        types: [],
        roleSearch: [],
      },
    }
  },
  methods: {
    /**
     * Sự kiện chọn role hiển thị
     */
    changeRoleType() {
      this.roles.roleSearch = this.roles.roles.filter(item => {
        if (this.selectedTypeRole.filter(role => {
          return role.description === item.role_type || this.selectedTypeRole.includes(this.roles.types[0])
        }).length > 0) {
          return item;
        }
      })
    },

    /**
     * Click nút đặt lại vai trò tìm kiém
     */
    resetRoleSearch() {
      this.selectedTypeRole = [];
      this.selectedTypeRole.push(this.roles.types[0])
      this.roles.roleSearch = this.roles.roles;
    },
    /**
     * Lấy danh sách kho
     */
    loadRole() {
      this.isLoading = true;
      getRoles().then(res => {
        this.roles = res.data
        this.roles.roleSearch = res.data.roles
        this.selectedTypeRole.push(res.data.types[0])
      }).catch(error => {
        console.log(error)
      }).finally(() => {
        setTimeout(() => {
          this.isLoading = false;
        }, 350)
      })
    }
  },
  created() {
    this.loadRole()
  }
}
</script>

<style lang="scss">
.ms-user-management {

  .theme-arco-divider-vertical {
    border-left: 1px solid rgba(0, 0, 0, .1);
    display: inline-block;
    height: 20px;
    margin: 0;
    max-width: 1px;
    min-width: 1px;
    vertical-align: middle;
  }

  .ms-table_roles {
    tr {
      max-height: 33px;

      td {
        white-space: wrap !important;
        max-height: 33px;
        .truncate-text-3 {
          margin-top: 12px;
          margin-bottom: 12px;
        }
      }
    }
  }

  .p-tabview-panels {
    display: flex;
    flex: 1;

    .p-tabview-panel {
      display: flex;
      flex-direction: column;
      flex: 1;
      min-height: 0;

      .p-datatable {
        flex-grow: 1;
        border: 1px solid #e0e0e0;
        border-radius: 4px;

        .p-datatable-table {

          &:not(.loading) .p-datatable-tbody > tr.p-datatable-emptymessage > td, &:not(.loading) .p-datatable-tbody > tr:last-child > td {
            border-bottom: none !important;
          }

        }
      }
    }
  }
}
</style>
