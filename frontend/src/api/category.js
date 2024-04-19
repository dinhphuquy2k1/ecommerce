import request from '../api/utils/request'

export function getCategory() {
    return request({
        url: 'api/category',
        method: 'GET',
    })
}