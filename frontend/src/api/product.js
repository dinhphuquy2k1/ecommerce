import request from '../api/utils/request'

export function addProduct(data) {
    return request({
        url: 'products',
        method: 'POST',
        data: data
    })
}