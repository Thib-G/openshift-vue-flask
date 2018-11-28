import axios from 'axios';

const API_URL = '/api';

export default {
  getMsg() {
    return axios.get(`${API_URL}/`).then(response => response.data);
  },
};
