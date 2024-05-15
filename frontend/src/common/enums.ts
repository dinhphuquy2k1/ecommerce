// enums.js
export const FORM_MODE = {
    NONE: 0,
    INSERT: 1,
    UPDATE: 2,
    DELETE: 3,
    DUPLICATE: 4
};

export const KEY_CODE = {
    ENTER: 13,
    COMMA: 188,
    BACK_SPACE: 8,
    TAB: 9,
    SHIFT: 16,
    CTRL: 17,
    ESC: 27,
    ALT: 18,
    ARROW_DOWN: 40,
    ARROW_UP: 38
};

export const FILE_TYPE = {
    XLSX: 0,
    ZIP: 1,
    LIST: 2, // file danh sách
    EXAM: 3, // file bài thi
};

export const RESPONSE_STATUS = {
    HTTP_OK: 200,
    HTTP_UNAUTHORIZED: 401,
    HTTP_UNPROCESSABLE_ENTITY: 422,
    HTTP_METHOD_NOT_ALLOWED: 405,
    HTTP_INTERNAL_SERVER_ERROR: 500,
};

export const MESSAGE = {
    HTTP_INSERT_OK: 'Thêm mới thành công',
    HTTP_UPDATE_OK: 'Cập nhật thành công',
    HTTP_DELETE_OK: 'Xóa thành công',
    INPUT_PROPERTY_PLACEHOLDER: 'Nhập một giá trị tùy chỉnh',
    SELECT_PROPERTY_PLACEHOLDER: 'Chọn một giá trị được đề xuất',
    INVALID_OPTION_SELECT: 'Vui lòng không nhập các giá trị trùng lặp.',
    INVALID_EXITS_VARIANT: 'Tùy chọn đã tồn tại',
    PLEASE_ENTER: 'Vui lòng nhập',
    PLEASE_CHOOSE: 'Vui lòng chọn',
    EMPTY_DROPDOWN: 'Không có lựa chọn nào',
    PLEASE_FILL_IN_THIS_FIELD: 'Vui lòng điền vào trường này',
    PLEASE_CHOOSE_ONE_OPTION: 'Vui lòng chọn một tùy chọn',
    PLEASE_UPLOAD_ONE_IMAGE: 'Vui lòng tải lên ít nhất một hình ảnh để đặt làm hình ảnh sản phẩm',
    ENTER: 'Nhập',
    INVALID_EMPTY_VARIANT: 'Vui lòng nhập một tùy chọn',
    INPUT_PLACEHOLDER_VARIANT: 'Nhập một biến thể',
    INVALID_EXITS_VARIANT_NAME: 'Biến thể đã được tạo. Vui lòng chọn một biến thể khác.',
    INVALID_EMPTY_VARIANT_NAME: 'Vui lòng nhập một biến thể',
    SKU_SELLER: 'SKU Người bán',
    BATCH_EDITING: 'Chỉnh sửa hàng loạt',
};
