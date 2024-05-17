import request from '../api/utils/request'

/**
 * Lấy danh sách menu
 * @returns {*}
 */
export function getMenu() {
    return request({
        url: 'menus',
        method: 'GET',
    })
}