<template>
  <div class="form-list flex-grow-1 d-flex ma-add-product_wrapper mw-100">
    <div class="d-flex flex-column flex-grow-1 mw-100">
      <div class="d-flex flex-row title-box">
        <div class="list-title flex-grow-1 text-start">Thêm sản phẩm</div>
      </div>
      <div class="d-flex flex-row toolbar-box justify-content-between position-sticky top-0 z-1">
        <div class="left-toolbar d-flex flex-row">
          <!--          <div class="m-search_form flex-row d-flex align-items-center d-flex">-->
          <!--            <InputText type="search" v-model="value" class="ms-input_search w-100" placeholder="Tìm kiếm"/>-->
          <!--            <div class="icon24 icon search-right search"></div>-->
          <!--          </div>-->
        </div>
        <div class="right-toolbar d-flex flex-row">
          <Button
              class="ms-btn blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2 me-3">
            <div class="icon-only icon-simple_cart"></div>
            <div class="fw-semibold">Lưu nháp</div>
          </Button>
          <Button
              class="ms-btn blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
            <div class="icon-only icon-simple_cart"></div>
            <div class="fw-semibold">Thêm sản phẩm</div>
          </Button>
        </div>
      </div>
      <div class="row gy-4 pb-4">
        <div class="col-xxl-9">
          <Panel header="Thông tin cơ bản" class="ma-media">
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label d-flex align-items-center">
                  <span class="required">*</span>
                  Hình ảnh sản phẩm
                  <div class="icon16 icon-note text-start"
                       v-tooltip="'Tải lên tối đa 9 hình ảnh. Kích thước hình ảnh tối thiểu: 300×300 px.\nBạn nên sử dụng hình nền trắng làm hình ảnh đầu tiên thay vì sử dụng hình ảnh có các yếu tố khác (chữ, logo, đường viền, khối màu, hình mờ hoặc hình ảnh đồ họa khác).\nĐể thêm chữ vào hình ảnh, hãy đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                </div>
                <div class="description">Bạn nên thêm ít nhất 5 ảnh để minh họa đầy đủ cho sản phẩm của bạn.</div>
                <div class="">
                  <FileUpload name="demo[]" url="/api/upload" @upload="onTemplatedUpload($event)" :multiple="true"
                              accept="image/*" :maxFileSize="5000000 " @select="onSelectedFiles" showUploadButton
                  >
                    <template #header="{ chooseCallback, clearCallback, files }">
                      <div class="flex flex-wrap justify-content-between align-items-center flex-1 gap-2 d-none">
                        <div class="flex gap-2">
                          <Button class="ms-btn light-pink d-flex icon-only justify-content-center ms-btn_search mt-4"
                                  v-tooltip.bottom="{ value: `Yêu thích`, escape: true }">
                            <div class="icon-only icon-heart_black" ref="myButton" @click="chooseCallback()"></div>
                          </Button>
                          <Button @click="clearCallback()" icon="pi pi-times" rounded outlined severity="danger"
                                  :disabled="!files || files.length === 0"></Button>
                        </div>
                        >
                      </div>
                    </template>
                    <template #content="{ files, uploadedFiles, removeUploadedFileCallback, removeFileCallback }">
                      <div class="row text-start gap-3 gx-0">
                        <div class="col-lg-8 ma-item-main-image" @click="$refs.myButton.click()">
                          <div class="image">
                            <Image :src="require('@public/assets/icons/image.svg')" style="color: red" alt="Image"/>
                          </div>
                          <div class="text-center title">Tải lên hình ảnh chính</div>
                          <ul>
                            <li>
                              Kích thước: 300 × 300 px
                            </li>
                            <li>
                              Kích thước tập tin tối đa: 5 MB (Tối đa 9 tập tin)
                            </li>
                            <li>
                              Định dạng: JPG, JPEG, PNG
                            </li>
                          </ul>
                        </div>
                        <div class="col-lg-4 row gap-2">
                          <div class="row gap-3">
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/background-perspective.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Chính diện'">
                                Chính diện
                              </div>
                            </div>
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/side.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Cạnh bên'">Cạnh bên</div>
                            </div>
                          </div>
                          <div class="row gap-3">
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/other-angles.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Các góc độ khác'">Các góc độ khác</div>
                            </div>
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/using.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Đang sử dụng'">Đang sử dụng</div>
                            </div>
                          </div>
                        </div>
                        <div class="row gap-3">
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/variant.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Biến thể'">Biến thể</div>
                          </div>
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/background-perspective.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Phối cảnh nền'">Phối cảnh nền</div>
                          </div>
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/close-up-photo.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Ảnh chụp cận'">Ảnh chụp cận</div>
                          </div>
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/size-and-weight.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Kích thước & cân nặng'">Kích thước & cân nặng</div>
                          </div>
                        </div>
                      </div>
                      <div v-if="files.length > 0">
                        <h5>Pending</h5>
                        <div class="flex flex-wrap p-0 sm:p-5 gap-5">
                          <div v-for="(file, index) of files" :key="file.name + file.type + file.size"
                               class="card m-0 px-6 flex flex-column border-1 surface-border align-items-center gap-3">
                            <div>
                              <img role="presentation" :alt="file.name" :src="file.objectURL" width="100" height="50"/>
                            </div>
                            <span class="font-semibold">{{ file.name }}</span>
                            <div>{{ formatSize(file.size) }}</div>
                            <Button icon="pi pi-times" @click="onRemoveTemplatingFile(file, removeFileCallback, index)"
                                    outlined rounded severity="danger"/>
                          </div>
                        </div>
                      </div>

                      <div v-if="uploadedFiles.length > 0">
                        <h5>Completed</h5>
                        <div class="flex flex-wrap p-0 sm:p-5 gap-5">
                          <div v-for="(file, index) of uploadedFiles" :key="file.name + file.type + file.size"
                               class="card m-0 px-6 flex flex-column border-1 surface-border align-items-center gap-3">
                            <div>
                              <img role="presentation" :alt="file.name" :src="file.objectURL" width="100" height="50"/>
                            </div>
                            <span class="font-semibold">{{ file.name }}</span>
                            <div>{{ formatSize(file.size) }}</div>
                            <Button icon="pi pi-times" @click="removeUploadedFileCallback(index)" outlined rounded
                                    severity="danger"/>
                          </div>
                        </div>
                      </div>
                    </template>
                  </FileUpload>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label d-flex align-items-center">Video
                  <div class="icon16 icon-note text-start"
                       v-tooltip="'Video tải lên sẽ được hiển thị trên trang chi tiết sản phẩm. Hãy làm nổi bật 1 hoặc 2 lợi điểm bán hàng chính của sản phẩm trong video.'"></div>
                </div>
                <div class="description">
                  Tỷ lệ khung hình video phải từ 9:16 đến 16:9. Kích thước tập tin tối đa: 100 MB.
                </div>
                <div class="col-6 ma-item-video">
                  <div class="icon">
                    <Image :src="require('@public/assets/icons/video.svg')" alt="Image"/>
                  </div>
                  <div class="title">
                    Video
                  </div>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label d-flex align-items-center">
                  <span class="required">*</span>
                  Tên sản phẩm
                </div>
                <div class="">
                  <InputText placeholder="Tên sản phẩm"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label d-flex align-items-center">
                  <span class="required">*</span>
                  Hạng mục
                  <div class="icon16 icon-note text-start"
                       v-tooltip="'Đảm bảo rằng bạn chọn danh mục phù hợp. Việc phân loại sai sản phẩm có thể ảnh hưởng đến chất lượng bán hàng.'"></div>
                </div>
                <div class="">
                  <TreeSelect v-model="selectedCategory" :options="categories"
                              @change="changeCategory"
                              label="name"
                              placeholder="Vui lòng chọn một hạng mục"/>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box group-form_properties" v-if="properties?.properties?.length > 0">
                <div class="label d-flex align-items-center">
                  Thuộc tính sản phẩm
                  <div class="icon16 icon-note text-start"
                       v-tooltip="'Thêm thuộc tính sản phẩm có thể giúp khách hàng hiểu rõ hơn về sản phẩm đó.'"></div>
                </div>
                <div class="row g-0 pb-2 ps-2 pe-2">
                  <div v-for="(property, index) in properties.properties" class="col-lg-4 col-sm-6 gx-3 gy-3 col-xs-12">
                    <div class="group-form_box" v-if="properties.propertyType?.INPUT_TEXT?.value === property.type">
                      <div class="label">{{ property['name'] }}</div>
                      <div class="">
                        <InputText v-model="selectedProperty[index]"
                                   :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"></InputText>
                      </div>
                      <div class="ms-error-text"></div>
                    </div>
                    <div class="group-form_box"
                         v-else-if="properties.propertyType?.SELECT_SINGLE_WITH_ADD_OPTION?.value === property.type || properties.propertyType?.SELECT_SINGLE?.value === property.type">
                      <div class="label d-flex align-items-center">
                        <span class="required" v-if="property.required">*</span>
                        {{ property['name'] }}
                      </div>
                      <div class="">
                        <Dropdown v-model="selectedProperty[index]" :options="property.property_values"
                                  optionLabel="value"
                                  @before-show="beforeShowSelectWithAddOption(index)"
                                  :placeholder="MESSAGE.SELECT_PROPERTY_PLACEHOLDER"
                                  showClear
                                  filter
                                  checkmark
                                  panelClass="ms-dropdown-checkmark"
                                  class="ms-category text-start">
                          <template #footer
                                    v-if="properties.propertyType?.SELECT_SINGLE_WITH_ADD_OPTION?.value === property.type">
                            <div class="d-flex gap-2 ms-dropdown_properties-footer">
                              <div class="group-form_box">
                                <div class="">
                                  <InputText v-model="valueSelectAddOption[index]"
                                             :class="{'error': invalidValueSelectAddOption[index]}"
                                             :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"></InputText>
                                </div>
                                <div class="ms-error-text" v-if="invalidValueSelectAddOption[index]">
                                  {{ invalidValueSelectAddOption[index] }}
                                </div>
                              </div>
                              <Button @click="appendOptionToSingleSelect(index)"
                                      class="ms-btn blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                                <div class="fw-semibold">Thêm</div>
                              </Button>
                            </div>
                          </template>
                        </Dropdown>
                      </div>
                      <div class="ms-error-text"></div>
                    </div>
                    <div class="group-form_box"
                         v-else-if="properties.propertyType?.SELECT_MULTIPLE_WITH_ADD_OPTION?.value === property.type || properties.propertyType?.SELECT_MULTIPLE?.value === property.type">
                      <div class="label">{{ property['name'] }}</div>
                      <div class="">
                        <MultiSelect v-model="selectedProperty[index]" :options="property.property_values"
                                     optionLabel="value"
                                     :placeholder="MESSAGE.SELECT_PROPERTY_PLACEHOLDER"
                                     display="chip"
                                     filter
                                     @before-show="beforeShowSelectWithAddOption(index)"
                                     class="ms-category text-start">
                          <template #footer
                                    v-if="properties.propertyType?.SELECT_MULTIPLE_WITH_ADD_OPTION?.value === property.type">
                            <div class="d-flex gap-2 ms-dropdown_properties-footer">
                              <div class="group-form_box">
                                <div class="">
                                  <InputText v-model="valueSelectAddOption[index]"
                                             :class="{'error': invalidValueSelectAddOption[index]}"
                                             :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"></InputText>
                                </div>
                                <div class="ms-error-text" v-if="invalidValueSelectAddOption[index]">
                                  {{ invalidValueSelectAddOption[index] }}
                                </div>
                              </div>
                              <Button @click="appendOptionToMultipleSelect(index)"
                                      class="ms-btn blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                                <div class="fw-semibold">Thêm</div>
                              </Button>
                            </div>
                          </template>
                        </MultiSelect>
                      </div>
                      <div class="ms-error-text"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="group-form_box">
                <div class="label">Thương hiệu</div>
                <div class="">
                  <InputText placeholder="Tên sản phẩm"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>
          <Panel header="Giá tiền" toggleable class="mt-4">
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label">Giá tiền</div>
                <div class="">
                  <InputText placeholder="Giá tiền"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="d-flex flex-row gap-4">
                <div class="group-form_box flex-grow-1 col-6">
                  <div class="label">Loại giảm giá</div>
                  <div class="">
                    <Dropdown v-model="selectedCategory" :options="cities" optionLabel="name"
                              placeholder="Loại giảm giá"
                              class="ms-category text-start"/>
                  </div>
                  <div class="ms-error-text"></div>
                </div>
                <div class="group-form_box flex-grow-1 col-6">
                  <div class="label">Tỉ lệ giảm giá</div>
                  <div class="">
                    <InputText placeholder="Tỉ lệ giảm giá"></InputText>
                  </div>
                  <div class="ms-error-text"></div>
                </div>
              </div>
              <div class="group-form_box">
                <div class="label">Mô tả</div>
                <div class="">
                  <Textarea rows="4" cols="30" class="h-100" placeholder="Nhập mô tả"/>
                </div>
              </div>
            </div>
          </Panel>
          <Panel header="Chi tiết sản phẩm" toggleable class="mt-4 ma-description-product">
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label d-flex">Mô tả sản phẩm
                  <div class="icon16 icon-note text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                </div>
                <div class="description">
                  Nên viết mô tả dài ít nhất 500 ký tự và thêm hình ảnh để giúp khách hàng đưa ra quyết định mua hàng.
                </div>
                <Editor v-model="value" editorStyle="height: 320px" placeholder="Nhập mô tả sản phẩm"/>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>

          <Panel header="Thông tin bán hàng" class="mt-4" :collapsed="selectedCategory">
            <template #header>
              <div class="d-flex flex-column justify-content-start text-start ma-custom-panel-header">
                <div class="title">Thông tin bán hàng</div>
                <div class="description" v-if="!selectedCategory">Vui lòng chọn danh mục trước</div>
              </div>
            </template>
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label d-flex gap-3 mb-1">Kích hoạt biến thể
                  <InputSwitch v-model="isVariant"/>
                </div>
                <div class="sub-description">Bạn có thể thêm biến thể nếu sản phẩm này có nhiều lựa chọn như kích cỡ
                  hoặc màu sắc.
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box" v-if="!isVariant">
                <div class="label d-flex align-items-center">
                  <span class="required">*</span>
                  Giá & Số lượng
                </div>
                <div class="row theme-arco-table-content-inner gx-0">
                  <div class="col-4 d-flex flex-column mb-2">
                    <div class="label pt-1 pb-1 ps-2 d-flex align-items-center">
                      <span class="required">*</span>
                      Giá bán lẻ
                    </div>
                    <div class="d-flex ps-2">
                      <InputNumber v-model="saleInfomation.retailPrice" inputClass="text-start" class="flex-grow-1"
                                   mode="currency"
                                   currency="VND" locale="vi"/>
                    </div>
                  </div>
                  <div class="col-4 d-flex flex-column">
                    <div class="label pt-1 pb-1 d-flex align-items-center ps-3">
                      <span class="required">*</span>
                      Số lượng
                    </div>
                    <div class="d-flex ps-3">
                      <InputNumber v-model="saleInfomation.quantity" inputClass="text-start" class="flex-grow-1"
                                   :max="999999"/>
                    </div>
                  </div>
                  <div class="col-4 d-flex flex-column">
                    <div class="label pt-1 pb-1 d-flex align-items-center ps-3 pe-2">
                      SKU Người bán
                    </div>
                    <div class="d-flex ps-3 pe-2">
                      <InputNumber v-model="saleInfomation.skuSeller" inputClass="text-start" class="flex-grow-1"/>
                    </div>
                  </div>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="ms-group_variants d-flex flex-column gap-3 justify-content-start" v-else>
                <div class="ms-variants_wrapper" v-for="(item, key) in listVariant">
                  <div v-if="!listVariant[key].complete">
                    <div class="group-form_box">
                      <div class="label d-flex align-items-center justify-content-between">
                        <div class="d-flex align-items-center">
                          <span class="required">*</span>
                          Tên biến thể
                          <div class="icon16 icon-note text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                        </div>
                        <div class="d-flex align-items-center ms-checkbox_label gap-1" v-if="key === 0">
                          <Checkbox v-model="isVariantImage" :binary="true" inputId="variant_image"/>
                          <label for="variant_image">
                            Thêm hình ảnh
                          </label>
                        </div>
                      </div>
                      <div class="d-flex align-items-center">
                        <InputText v-model="listVariant[key].name" :placeholder="MESSAGE.INPUT_PLACEHOLDER_VARIANT"
                                   :class="{'error': invalidVariant[`name${key}`]}" maxlength="50"
                                   @input="changeNameVariant($event, key)"></InputText>
                        <div class="icon-w24 ms-1" style="margin-right: 45px;">
                          <div class="icon_remove pointer" v-if="listVariant.length > 1"
                               @click="removeVariant(key)"></div>
                        </div>
                      </div>
                      <div class="ms-error-text" v-if="invalidVariant[`name${key}`]">
                        {{ invalidVariant[`name${key}`] }}
                      </div>
                    </div>
                    <div class="group-form_box mt-4">
                      <div class="label d-flex align-items-center">
                        <span class="required">*</span>
                        Tùy chọn
                        <div class="icon16 icon-note text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                      </div>
                      <div>
                        <DataTable :value="item.option" :reorderableColumns="true"
                                   class="ms-variants_table" :class="{' ms-variant_image': isVariantImage}"
                                   @rowReorder="onRowReorderVariant($event, key)" v-if="item.option.length > 0">
                          <Column>
                            <template #body="slotProps">
                              <input type="file" hidden :ref="`ref_variant_image${key}${slotProps.index}`"
                                     @change="changeVariantImage($event, key, slotProps.index)">
                              <Button v-if="isVariantImage"
                                      @click="chooseVariantImage(key, slotProps.index)"
                                      :class="{'border-0': listVariant[key].option[slotProps.index].image}"
                                      class="ms-btn btn-image outline-primary d-flex flex-column justify-content-center flex-grow-1 me-3 ms-btn_search gap-2">
                                <div v-if="!listVariant[key].option[slotProps.index].image">
                                  <div class="icon">
                                    <Image :src="require('@public/assets/icons/image.svg')"
                                           alt="Image"/>
                                  </div>
                                  <div class="">Tải ảnh lên</div>
                                </div>
                                <div v-else class="d-flex">
                                  <Image :src="listVariant[key].option[slotProps.index].image" class="flex-grow-1"
                                         alt="Image"
                                         preview>
                                    <template #indicatoricon>
                                      <div class="d-flex gap-2">
                                        <i class="icon-eye"></i>
                                        <div class="icon_remove-white"
                                             @click="removeVariantImage($event, key, slotProps.index)"></div>
                                      </div>
                                    </template>
                                  </Image>
                                </div>
                              </Button>
                            </template>
                          </Column>
                          <Column class="flex-grow-1 d-flex align-items-start pe-2">
                            <template #body="slotProps">
                              <div class="flex-grow-1 d-flex flex-column">
                                <div class="flex-grow-1">
                                  <InputText v-model="item.option[slotProps.index].value"
                                             :class="{'error': invalidVariant[`${key}${slotProps.index}`]}"
                                             :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"
                                             maxlength="50"
                                             @input="changeVariantValue(key, slotProps.index)"></InputText>
                                </div>
                                <div class="ms-error-text" v-if="invalidVariant[`${key}${slotProps.index}`]">
                                  {{ invalidVariant[`${key}${slotProps.index}`] }}
                                </div>
                              </div>
                            </template>
                          </Column>
                          <Column
                              style="padding-top: 6px !important; padding-right: 12px !important; padding-left: 12px !important;">
                            <template #body="slotProps">
                              <div class="row-actions flex-row">
                                <div class="icon_remove pointer"
                                     @click="deleteOptionVariantValue(key, slotProps.index)">
                                </div>
                              </div>
                            </template>
                          </Column>
                          <Column rowReorder :reorderableColumn="false" style="padding-top: 6px !important;">
                            <template #rowreordericon>
                              <div class="p-icon p-datatable-reorderablerow-handle icon_drag_dot" aria-hidden="true"
                                   data-pc-section="rowreordericon"></div>
                            </template>
                          </Column>
                        </DataTable>

                        <div class="mt-2 d-flex flex-grow-1">
                          <input type="file" hidden :ref="`ref_variant_image${key}`"
                                 @change="changeVariantImage($event, key)">
                          <Button v-if="isVariantImage"
                                  @click="chooseVariantImage(key)"
                                  class="ms-btn btn-image outline-primary d-flex flex-column justify-content-center me-3 ms-btn_search gap-2">
                            <div v-if="!itemVariant[key].image">
                              <div class="icon">
                                <Image :src="require('@public/assets/icons/image.svg')"
                                       alt="Image"/>
                              </div>
                              <div class="">Tải ảnh lên</div>
                            </div>
                            <div v-else class="d-flex flex-grow-1">
                              <Image :src="itemVariant[key].image" class="flex-grow-1"
                                     alt="Image"
                                     preview>
                                <template #indicatoricon>
                                  <div class="d-flex gap-2">
                                    <i class="icon-eye"></i>
                                    <div class="icon_remove-white"
                                         @click="removeVariantImage($event, key)"></div>
                                  </div>
                                </template>
                              </Image>
                            </div>
                          </Button>
                          <div class="d-flex flex-column flex-grow-1">
                            <div class="flex-grow-1">
                              <InputText v-model="itemVariant[key].value"
                                         :class="{'error': invalidVariant[key]}"
                                         maxlength="50"
                                         :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"
                                         @input="changeVariantValue(key)"></InputText>
                            </div>
                            <div class="ms-error-text" v-if="invalidVariant[key]">
                              {{ invalidVariant[key] }}
                            </div>
                          </div>
                          <div class="me-4 ms-4" style="padding-left: 25px"></div>
                        </div>
                        <Button
                            @click="completeVariant(key)"
                            class="ms-btn secondary primary d-flex justify-content-center ms-btn_search ps-3 pe-3 mt-4 gap-2">
                          <div class="">Xong</div>
                        </Button>
                      </div>
                    </div>
                  </div>
                  <div class="" v-else>
                    <div class="row gy-2 align-items-center">
                      <div class="d-flex flex-column col-10 gap-2">
                        <div>
                          {{ listVariant[key].name }}
                        </div>
                        <div class="d-flex gap-2 flex-wrap">
                          <div v-for="option in listVariant[key].option">
                            <Chip :label="option.value"/>
                          </div>
                        </div>
                      </div>
                      <div class="col-2 d-flex justify-content-center">
                        <Button
                            @click="editVariant(key)"
                            class="ms-btn btn-transparent d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-1 mt-2 mb-2">
                          <div class="">Chỉnh sửa</div>
                        </Button>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <Button
                      v-if="listVariant.length < 3"
                      @click="addVariant"
                      class="custom-btn text-link ms-btn d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-1 mt-2 mb-2">
                    <div class="icon24 icon-add-blue"></div>
                    <div class="">Thêm biến thể</div>
                  </Button>
                </div>

                <div class="group-form_box" v-if="variantsData.length > 0">
                  <div class="label d-flex align-items-center justify-content-between">
                    <div>
                      <span class="required">*</span>
                      Danh sách biến thể
                    </div>
                    <div>
                      <ToggleButton v-model="isBatchEditing" :onLabel="MESSAGE.BATCH_EDITING" :offLabel="MESSAGE.BATCH_EDITING" class="ms-btn">
                        <template #icon>
                          <div class="icon_up"></div>
                        </template>
                      </ToggleButton>
                    </div>
                  </div>
                  <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-5 row-cols-xl-5 gx-3 gy-2" v-if="isBatchEditing">
                    <div class="col" v-for="(variant, index) in listVariant">
                      <div class="">
                        <Dropdown v-model="batchEditingVariant[`variant${index}`]" :options="[{
                          value: 'Tất cả'
                        },... variant.option]" optionLabel="value"
                                  autoOptionFocus
                                  selectOnFocus
                                  placeholder="Trạng thái"
                                  class="ms-category text-start"/>
                      </div>
                    </div>
                    <div class="col">
                      <InputNumber v-model="batchEditingVariant['retailPrice']" inputClass="text-start"
                                   class="flex-grow-1"
                                   mode="currency"
                                   placeholder="Giá bán lẻ"
                                   currency="VND" locale="vi"/>
                    </div>
                    <div class="col">
                      <InputNumber v-model="batchEditingVariant['quantity']" placeholder="Số lượng"
                                   inputClass="text-start" class="flex-grow-1"/>
                    </div>
                    <div class="col">
                      <InputText v-model="batchEditingVariant['skuSeller']"
                                 :placeholder="MESSAGE.SKU_SELLER"></InputText>
                    </div>
                    <div class="col order-md-last">
                      <Button
                          class="ms-btn secondary d-flex justify-content-center w-100 ms-btn_search ps-3 pe-3 gap-2 me-2"
                          @click="applyBatchEditing">
                        <div class="">Áp dụng</div>
                      </Button>
                    </div>
                  </div>
                  <div class="mt-3">
                    <DataTable class="flex1 flex-column ms-list_variant--table"
                               :value="variantsData"
                               v-if="variantsData.length > 0"
                               tableStyle="min-width: 100%" rowHover>
                      <Column
                          v-for="(column, index) in Object.keys(variantsData[0]).filter(key => key.startsWith('variant_name_')).map((name, index) => ({ name: variantsData[0][name] }))"
                          :key="index"
                          :field="'variant_option_' + index"
                          :header="column.name"
                          style="width: 120px"
                      />
                      <Column field="retail_price" style="width: 140px">
                        <template #header>
                          Giá bán lẻ
                        </template>
                        <template #body="slotProps">
                          <InputNumber v-model="variantsData[slotProps.index].retail_price" inputClass="text-start"
                                       class="flex-grow-1"
                                       mode="currency"
                                       placeholder="Giá bán lẻ"
                                       currency="VND" locale="vi"/>
                        </template>
                      </Column>
                      <Column field="quantity" style="width: 128px">
                        <template #header>
                          Số lượng
                        </template>
                        <template #body="slotProps">
                          <InputNumber v-model="variantsData[slotProps.index].quantity" placeholder="Số lượng"
                                       inputClass="text-start" class="flex-grow-1"/>
                        </template>
                      </Column>
                      <Column field="sku_seller" style="width: 128px">
                        <template #header>
                          {{ MESSAGE.SKU_SELLER }}
                        </template>
                        <template #body="slotProps">
                          <InputText v-model="variantsData[slotProps.index].sku_seller"
                                     :placeholder="MESSAGE.SKU_SELLER"></InputText>
                        </template>
                      </Column>
                    </DataTable>
                  </div>
                  <div class="ms-error-text"></div>
                </div>
              </div>

            </div>
          </Panel>

          <Panel header="Vận chuyển" toggleable class="mt-4" collapsed>
            <template #header>
              <div class="d-flex flex-column justify-content-start text-start ma-custom-panel-header">
                <div class="title">Vận chuyển</div>
                <div class="description">Vui lòng chọn danh mục trước</div>
              </div>
            </template>
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label">Tên sản phẩm</div>
                <div class="">
                  <InputText placeholder="Tên sản phẩm"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label">Mô tả</div>
                <div class="">
                  <Textarea rows="4" cols="30" class="h-100" placeholder="Nhập mô tả"/>
                </div>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>
        </div>
        <div class="col-xxl-3">
          <Panel header="Loại sản phẩm" toggleable>
            <p class="m-0">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat.
              Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
              Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
              laborum.
            </p>
          </Panel>
          <Panel header="Trạng thái" toggleable class="mt-4">
            <div class="group-form_box flex-grow-1">
              <div class="label">Trạng thái</div>
              <div class="">
                <Dropdown v-model="selectedCategory" :options="cities" optionLabel="name" placeholder="Trạng thái"
                          class="ms-category text-start"/>
              </div>
            </div>
          </Panel>
        </div>
      </div>
    </div>
  </div>

  <Dialog v-model:visible="isCropperImage" modal header="Cắt hình ảnh" :style="{ width: '25rem' }">
    <vue-cropper ref="cropper" :src="imageSrc" :autoCrop="true"
                 :aspectRatio="1"
                 :autoCropArea="1"
                 :minCropBoxWidth="100" :minCropBoxHeight="100"
                 :maxCropBoxWidth="300" :maxCropBoxHeight="300"
                 :minContainerWidth="314"
                 :minCanvasWidth="314"
                 :maxCanvasWidth="314"
                 :minCanvasHeight="314"
                 :minContainerHeight="314"
                 :maxContainerHeight="314"
                 :maxContainerWidth="314"
    ></vue-cropper>
    <template #footer>
      <div class="d-flex flex-row">
        <div class="flex1"></div>
        <Button
            class="ms-btn secondary d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-2 me-2"
            @click="isCropperImage = false">
          <div class="">Hủy</div>
        </Button>
        <Button @click="cropImage"
                class="ms-btn primary blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="fw-semibold">Xong</div>
        </Button>
      </div>

    </template>
  </Dialog>
</template>

<script>
import Panel from 'primevue/panel';
import Button from 'primevue/button';
import InputText from 'primevue/inputtext';
import Textarea from 'primevue/textarea';
import Dropdown from 'primevue/dropdown';
import Editor from 'primevue/editor';
import MultiSelect from 'primevue/multiselect';
import TreeSelect from 'primevue/treeselect';
import Image from 'primevue/image';
import FileUpload from 'primevue/fileupload';
import InputNumber from 'primevue/inputnumber';
import InputSwitch from 'primevue/inputswitch';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Dialog from 'primevue/dialog';
import Checkbox from 'primevue/checkbox';
import Chip from 'primevue/chip';
import ToggleButton from 'primevue/togglebutton';
import VueCropper from 'vue-cropperjs';
import 'cropperjs/dist/cropper.css';
import {getCategory} from '@/api/category'
import {getCategoryProperty} from '@/api/category-property'
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
    Panel,
    Textarea,
    Dropdown,
    Editor,
    FileUpload,
    Image,
    TreeSelect,
    MultiSelect,
    InputSwitch,
    InputNumber,
    DataTable,
    Column,
    VueCropper,
    Dialog,
    Checkbox,
    Chip,
    ToggleButton,
  },
  data() {
    return {
      value: '',
      selectedCategory: null,
      cities: [
        {name: 'New York', code: 'NY'},
        {name: 'Rome', code: 'RM'},
        {name: 'London', code: 'LDN'},
        {name: 'Istanbul', code: 'IST'},
        {name: 'Paris', code: 'PRS'}
      ],
      selectedProperty: [],
      valueSelectAddOption: [],
      invalidValueSelectAddOption: [],
      categories: [],
      properties: [],
      files: [],
      totalSize: 0,
      saleInfomation: {
        retailPrice: null,
        quantity: null,
        skuSeller: null,
      },
      isVariant: false,
      variantsData: [],
      batchEditingVariant: [],
      isBatchEditing: false,
      listVariant: [
        {
          id: 0,
          name: null,
          option: []
        }
      ],
      itemVariant: [
        {
          id: 0,
          value: null,
          image: null,
        },
      ],
      isVariantImage: false,
      isCropperImage: false,
      selectedVariant: null,
      imageSrc: null,
      invalidVariant: [],
      totalSizePercent: 0,
    }
  },
  methods: {
    onRemoveTemplatingFile(file, removeFileCallback, index) {
      removeFileCallback(index);
      this.totalSize -= parseInt(this.formatSize(file.size));
      this.totalSizePercent = this.totalSize / 10;
    },
    onSelectedFiles(event) {
      this.files = event.files;
      this.files.forEach((file) => {
        this.totalSize += parseInt(this.formatSize(file.size));
      });
    },
    onTemplatedUpload() {
      this.$toast.add({severity: 'info', summary: 'Success', detail: 'File Uploaded', life: 3000});
    },
    formatSize(bytes) {
      const k = 1024;
      const dm = 3;
      const sizes = this.$primevue.config.locale.fileSizeTypes;

      if (bytes === 0) {
        return `0 ${sizes[0]}`;
      }

      const i = Math.floor(Math.log(bytes) / Math.log(k));
      const formattedSize = parseFloat((bytes / Math.pow(k, i)).toFixed(dm));

      return `${formattedSize} ${sizes[i]}`;
    },

    /**
     * Sự kiện trước khi show drowdown add option
     * @param index
     */
    beforeShowSelectWithAddOption(index) {
      this.valueSelectAddOption[index] = this.invalidValueSelectAddOption[index] = null;
    },

    /**
     * Sự kiện thêm option vào select single
     */
    appendOptionToSingleSelect(index) {
      let option = this.validateAddOption(index)
      if (option) {
        this.selectedProperty[index] = option;
      }
    },

    /**
     * validate khi add option
     * @param index
     * @returns {{updated_at: null, created_at: null, id: null, value: *, property_id}|null}
     */
    validateAddOption(index) {
      this.invalidValueSelectAddOption[index] = null;
      let value = this.valueSelectAddOption[index];
      if (value === null || value === "" || value.trim() === "") {
        return null;
      }
      if (this.properties.properties[index].property_values.filter(item => item.value.toLocaleString() === value.toLocaleString()).length > 0) {
        this.invalidValueSelectAddOption[index] = MESSAGE.INVALID_OPTION_SELECT;
        return null;
      }
      let option = {
        'id': null,
        'property_id': this.properties.properties[index].id,
        'value': this.valueSelectAddOption[index],
        'created_at': null,
        'updated_at': null,
      }
      this.properties.properties[index].property_values.push(option);
      this.valueSelectAddOption[index] = null;
      return option;
    },

    /**
     * Sự kiện thêm option vào select multiple
     * @param index
     */
    appendOptionToMultipleSelect(index) {
      let option = this.validateAddOption(index)
      if (option) {
        if (!this.selectedProperty[index]) {
          this.selectedProperty[index] = [];
        }
        this.selectedProperty[index].push(option);
      }
    },

    /**
     * Click nút thêm biến thể
     */
    addVariant() {
      this.itemVariant.push(
          {
            id: this.itemVariant.length,
            value: null,
            name: null,
          }
      )
      this.listVariant.push(
          {
            id: this.listVariant.length,
            name: null,
            option: []
          }
      )
    },

    /**
     * Click button chỉnh sửa biến thể
     * @param key
     */
    editVariant(key) {
      this.listVariant[key].complete = false;
    },

    /**
     * Click icon xóa biến thể
     * @param key
     */
    removeVariant(key) {
      this.listVariant.splice(key, 1);
    },

    /**
     * Click nút áp dụng chỉnh sửa hàng loạt cho các biến thể
     */
    applyBatchEditing() {
      let conditions = []
      this.listVariant.forEach((item, i) => {
        let index = item.option.findIndex((option) => {
          return option.value === this.batchEditingVariant[`variant${i}`].value
        })
        if (index >= 0) {
          conditions.push({
            'field': `variant_option_${i}`,
            'value': this.batchEditingVariant[`variant${i}`].value,
          })
        }
      })

      this.variantsData.forEach((item, index) => {
        // áp dụng cho các sản phẩm đã chọn
        if (conditions.length > 0) {
          let check = true;
          conditions.forEach((condition) => {
            if (this.variantsData[index][condition.field] !== condition.value) {
              check = false;
            }
          })
          if (check) {
            this.variantsData[index]['retail_price'] = this.batchEditingVariant['retailPrice'];
            this.variantsData[index]['quantity'] = this.batchEditingVariant['quantity'];
            this.variantsData[index]['sku_seller'] = this.batchEditingVariant['skuSeller'];
          }
        }
        // áp dụng cho tất cả
        else {
          this.variantsData[index]['retail_price'] = this.batchEditingVariant['retailPrice'];
          this.variantsData[index]['quantity'] = this.batchEditingVariant['quantity'];
          this.variantsData[index]['sku_seller'] = this.batchEditingVariant['skuSeller'];
        }
      })
    },

    /**
     * xử lý list biến thể
     * @param arr
     * @returns {*[]}
     */
    generateVariants(arr) {
      let result = [];

      const generate = (current, index) => {
        // nếu duyệt hết các biến thể thì thêm biến thể
        if (index === arr.length) {
          result.push({...current});
          return;
        }

        const {name, option} = arr[index];

        // duyệt từng option của biến thể
        for (const opt of option) {
          current[`variant_name_${index}`] = name;
          current[`variant_option_${index}`] = opt.value;
          current[`quantity`] = null;
          current[`retail_price`] = null;
          current[`sku_seller`] = null;
          // gọi hàm để lấy các giá trị option trong biến thể kế tiếp
          generate(current, index + 1);
        }
      };

      generate({}, 0);
      return result;
    },

    /**
     * Sự kiện nhập tên biến thể
     * @param event
     * @param key
     */
    changeNameVariant(event, key) {
      clearTimeout(this.debounce);
      this.debounce = setTimeout(() => {
        delete this.invalidVariant[`name${key}`]
        // thay đổi giá trị
        if (this.listVariant[key].name !== "") {
          if (this.listVariant.filter((item, k) => item.name != null && item.name.toLocaleLowerCase() === this.listVariant[key].name.toLocaleLowerCase() && k !== key).length > 0) {
            this.invalidVariant[`name${key}`] = MESSAGE.INVALID_EXITS_VARIANT_NAME;
          }
        }
      }, 750)
    },

    /**
     * Click button "Xong" của từng biến thể
     * @param key
     */
    completeVariant(key) {
      delete this.invalidVariant[`name${key}`]
      delete this.invalidVariant[key]
      if (this.listVariant[key].name === null || this.listVariant[key].name === "") {
        this.invalidVariant[`name${key}`] = MESSAGE.INVALID_EMPTY_VARIANT_NAME;
      }
      this.listVariant[key].option.forEach((item, index) => {
        delete this.invalidVariant[`${key}${index}`]
        if (item === "") {
          this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EMPTY_VARIANT;
        }
        // kiểm tra giá trị đã tồn tại chưa
        else if (this.listVariant[key].option.filter((item, k) => item.value != null && item.value.toLocaleLowerCase() === this.listVariant[key].option[index].value.toLocaleLowerCase() && k !== index).length > 0) {
          this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EXITS_VARIANT;
        }
      })

      if (this.itemVariant[key].value === null && this.listVariant[key].option.length === 0) {
        this.invalidVariant[key] = MESSAGE.INVALID_EMPTY_VARIANT;
      }
      if (this.listVariant[key].option.filter(item => item.value != null && this.itemVariant[key].value != null && item.value.toLocaleLowerCase() === this.itemVariant[key].value.toLocaleLowerCase()).length > 0) {
        this.invalidVariant[key] = MESSAGE.INVALID_EXITS_VARIANT;
      }

      if (Object.keys(this.invalidVariant).length > 0) {
        return
      }
      this.listVariant[key].complete = true;
    },

    /**
     * Sự kiện thay đổi thứ tự hàng biến thể
     * @param event
     * @param index
     */
    onRowReorderVariant(event, index) {
      this.listVariant[index].option = event.value;
    },

    /**
     * Sự kiện nhập giá trị của biến thể
     * @param key
     * @param index
     */
    changeVariantValue(key, index = null) {
      clearTimeout(this.debounce);
      this.debounce = setTimeout(() => {
        delete this.invalidVariant[`${key}${index}`]
        // thay đổi giá trị
        if (index != null) {
          //check rỗng
          if (this.listVariant[key].option[index].value === "") {
            this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EMPTY_VARIANT;
          }
          // kiểm tra giá trị đã tồn tại chưa
          else if (this.listVariant[key].option.filter((item, k) => item.value != null && item.value.toLocaleLowerCase() === this.listVariant[key].option[index].value.toLocaleLowerCase() && k !== index).length > 0) {
            this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EXITS_VARIANT;
          }
        }
        // thêm mới
        else {
          delete this.invalidVariant[key]
          if (this.itemVariant[key].value !== "") {
            if (this.listVariant[key].option.filter(item => item.value != null && item.value.toLocaleLowerCase() === this.itemVariant[key].value.toLocaleLowerCase()).length > 0) {
              this.invalidVariant[key] = MESSAGE.INVALID_EXITS_VARIANT;
            } else {
              this.listVariant[key].option.push({
                id: this.listVariant.length,
                value: this.itemVariant[key].value,
                image: this.itemVariant[key].image,
              })
              this.itemVariant[key] = {
                id: this.itemVariant[key].id,
                value: null,
                name: null,
              };
            }
          }
        }

      }, 750);
    },

    /**
     * Xóa biến thể
     * @param key
     * @param index
     */
    deleteOptionVariantValue(key, index) {
      this.listVariant[key].option.splice(index, 1);
    },

    /**
     * Click nút tải ảnh lên
     * @param key
     * @param index
     */
    chooseVariantImage(key, index = null) {
      if (index != null && this.listVariant[key].option[index].image) {
        return;
      }
      const ref = index != null ? `ref_variant_image${key}${index}` : `ref_variant_image${key}`;
      this.$refs[ref][0].click()
    },

    /**
     * xóa ảnh đã tải
     * @param event
     * @param key
     * @param index
     */
    removeVariantImage(event, key, index = null) {
      event.stopPropagation()
      if (index != null) {
        this.listVariant[key].option[index].image = null;
      } else {
        this.itemVariant[key].image = null;
      }
    },

    /**
     *
     * @param event
     * @param key
     * @param index
     * @returns {Promise<void>}
     */
    async changeVariantImage(event, key, index = null) {
      const ref = index != null ? `ref_variant_image${key}${index}` : `ref_variant_image${key}`;
      const file = this.$refs[ref][0].files[0];
      const reader = new FileReader();
      reader.onload = (event) => {
        this.imageSrc = event.target.result;
        if (index != null) {
          this.selectedVariant = this.listVariant[key].option[index];
          this.selectedVariant.index = index;
        } else {
          this.selectedVariant = this.itemVariant;
        }
        this.selectedVariant.key = key;
        this.isCropperImage = true;
      };
      await reader.readAsDataURL(file);
    },

    /**
     * Click cắt ảnh
     */
    cropImage() {
      let ref = '';
      if (this.selectedVariant.index) {
        ref = `ref_variant_image${this.selectedVariant.key}${this.selectedVariant.index}`;
        this.listVariant[this.selectedVariant.key].option[this.selectedVariant.index].image = this.$refs.cropper.getCroppedCanvas().toDataURL();
      } else {
        ref = `ref_variant_image${this.selectedVariant.key}`;
        this.itemVariant[this.selectedVariant.key].image = this.$refs.cropper.getCroppedCanvas().toDataURL();
      }
      this.$refs[ref][0].value = null;
      this.isCropperImage = false;
      this.selectedVariant = null;
    },
    /**
     * Sự kiện chọn hạng mục
     */
    changeCategory() {
      // lấy ra id hạng mục
      let idCategory = Object.keys(this.selectedCategory)[0];
      getCategoryProperty(idCategory).then(res => {
        this.properties = res.data
      }).catch(error => {
        console.log(error)
      })
    },

    loadCategory() {
      getCategory().then(res => {
        this.categories = res.data;
      })
          .catch(error => {
            console.log(error)
          })
    }
  },
  created() {
    this.loadCategory();
  },
  watch: {
    listVariant: {
      handler(newVal, oldVal) {
        this.variantsData = this.generateVariants(newVal)
      },
      deep: true,
    }
  }
}
</script>

<style lang="scss">
.ma-add-product_wrapper {
  .p-panel {
    border-radius: 8px;
    background-color: #fff;

    .ma-custom-panel-header {
      .description, .sub-description {
        color: rgba(0, 0, 0, .55);
        font-size: 14px;
        font-weight: 400;
        margin-top: 3px;
      }

    }

    .sub-description {
      font-size: 12px;
      color: rgba(0, 0, 0, .55);
      font-weight: 400;
      margin-top: 3px;
    }

    .theme-arco-table-content-inner {
      border: 1px solid #e0e0e0;
      border-radius: 4px;

      .label {
        background-color: #f5f5f5;
      }
    }

    .ms-group_variants {
      .ms-variants_wrapper {
        background-color: #f5f5f5;
        padding: 16px;
        border-radius: 4px;
      }
    }

    .ms-list_variant--table {
      .p-datatable-wrapper {
        border: 1px solid rgba(0, 0, 0, .1);
        border-radius: 4px;

        .p-datatable-table {
          .p-datatable-thead {
            tr {
              th {
                background-color: #f5f5f5 !important;
                box-sizing: border-box;
                color: rgba(0, 0, 0, .92);
                font-weight: 600;
                line-height: 1.5715;
                text-align: left;
                padding: 6px;
                border: unset;
                font-size: 12px;
              }
            }
          }

          .p-datatable-tbody {
            tr {
              &:hover {
                background-color: rgba(0, 0, 0, .08) !important;
              }

              td {
                border: unset !important;
                padding: 6px !important;
                border-radius: unset !important;
              }
            }
          }
        }
      }
    }

    .ms-variants_table {
      .p-datatable-wrapper {
        .p-datatable-table {

          .p-datatable-thead {
            display: none;
          }

          tr {
            display: flex;
            background: unset !important;
            margin-bottom: 10px;

            td {
              height: unset !important;
              padding: unset !important;
              border: unset !important;

              &:last-child {
                background: unset !important;
              }
            }
          }
        }
      }

      &.ms-variant_image {
        .p-datatable-wrapper {
          .p-datatable-table {
            tr {
              display: flex;
              background: unset !important;

              td {
                height: 106px;
                max-height: 106px;
              }
            }

          }
        }
      }
    }

    .p-panel-header {
      font-size: 16px;
      color: #000;
      font-weight: 700;
      background: #fff;
      border-bottom: unset;
      padding: 24px;
    }

    .p-panel-content {
      padding: 0 24px 24px 24px;
    }
  }
}

.ma-description-product {
  .p-editor-container .p-editor-toolbar.ql-snow {
    display: flex;
    justify-content: start;
    background: #fff;
    border-bottom: unset;
  }

  .ql-formats {
    .ql-picker-label {
      display: flex;
      justify-content: start;
    }
  }

  .ql-editor.ql-blank::before {
    font-style: unset;
    font-size: 14px;
    color: rgb(0, 0, 0, 0.3);
  }
}

.ma-media {

  .ma-item-video {
    width: 106px;
    height: 108px;
    background-color: #f5f5f5;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    border-radius: 4px;
    border: 1px dashed rgba(0, 0, 0, .14);

    .icon {
      margin-bottom: 8px;
    }

    &:hover {
      cursor: pointer;
      border-color: rgb(0, 153, 149);
    }
  }

  .p-fileupload {
    .p-fileupload-buttonbar {
      display: none;
    }

    .p-fileupload-content {
      padding: unset;
      border: unset;

      .ma-item-main-image {
        align-items: center;
        background-color: #fff;
        border: 1px dashed rgba(0, 0, 0, .14);
        border-radius: 4px;
        color: rgba(0, 0, 0, .55);
        display: flex;
        flex-direction: column;
        height: 224px;
        justify-content: center;
        width: 228px;

        .title {
          color: rgba(0, 0, 0, .92);
          font-weight: 500;
          margin-bottom: 8px;
          margin-top: 4px;
        }

        ul {
          margin-left: 30px;
          line-height: 18px;

          li {
            font-size: 12px;
          }
        }

        &:hover {
          cursor: pointer;
          border-color: rgb(0, 153, 149);
        }
      }

      .ma-item-image {
        width: 106px;
        height: 108px;
        background-color: #f5f5f5;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        border-radius: 4px;
        border: 1px dashed rgba(0, 0, 0, .14);

        &:hover {
          cursor: pointer;
          border-color: rgb(0, 153, 149);
        }

        .title {
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
          -webkit-line-clamp: 1;
        }
      }
    }
  }
}
</style>
