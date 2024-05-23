import axios from 'axios'

const service = axios.create({
    baseURL: "http://localhost:30001/api", // uri = baseURL + apiFunction truyền tới
    timeout: 5000,
    headers: { // Request Headers
        'Content-Type': 'application/json',
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
        return response.data
    },
    error => {
        console.log(error)
        if (error.response) {
        }
        return Promise.reject(error)
    }
)

export default service
