import request from '../api/utils/request'

export function getCategory() {
    return request({
        url: 'category',
        method: 'GET',
    })
}