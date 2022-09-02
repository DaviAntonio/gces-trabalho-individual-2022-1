import axios from "axios";

export const BASE_API = axios.create({
    baseURL: "http://172.16.100.3:8000"
});
