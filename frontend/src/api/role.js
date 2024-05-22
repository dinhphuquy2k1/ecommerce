import request from '../api/utils/request'

/**
 *
 * @returns {*}
 */
export function getRoles() {
    return request({
        url: 'roles',
        method: 'GET',
    })
}