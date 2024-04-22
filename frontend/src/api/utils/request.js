import axios from 'axios'
import store from '@/store'
import router from '@/router'

const service = axios.create({
    baseURL: "http://localhost:30001/api", // uri = baseURL + apiFunction truyền tới
    timeout: 5000,
    headers: { // Request Headers
        'content-type': 'application/json',
        'Accept': 'application/json'
    }
})

service.interceptors.request.use(
    config => {
        // if (Auth.check()) {
        //     // config.headers['Authorization'] = 'Bearer ' + Auth.getToken()
        // }
        return config
    },
    error => {
        console.log('error', error)
    }
)

service.interceptors.response.use(
    response => {
        const res = response.data
        return res
    },
    error => {
        console.log(error)
        if (error.response) {
        }
        return Promise.reject(error)
    }
)

export default service
