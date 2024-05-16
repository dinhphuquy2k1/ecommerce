import request from '../api/utils/request'

export function addProduct(data) {
    return request({
        url: 'products',
        method: 'POST',
        headers: {
            'Content-Type': 'multipart/form-data' // Đảm bảo server biết là dữ liệu là multipart/form-data
        },
        data: data
    })
}
