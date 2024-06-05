import {createStore} from 'vuex'
import paging from "@/store/modules/paging";
import category from "@/store/modules/category";
import product from "@/store/modules/product";

export default createStore({
    modules: {
        paging,
        category,
        product,
    }
})
