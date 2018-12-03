<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png"> +
    <img alt="Flask logo" src="../assets/flask.png" height="150">
    <HelloWorld msg="Welcome to Your Vue.js/Flask App on OpenShift"/>
    <p>Message from API: {{ msg }}</p>
  </div>
</template>

<script>
// @ is an alias to /src
import ApiService from '@/services/api-service';
import HelloWorld from '@/components/HelloWorld.vue';

export default {
  name: 'home',
  data() {
    return {
      apiService: ApiService,
      msg: '',
    };
  },
  created() {
    this.apiService.getMsg().then((data) => {
      this.msg = data.msg;
    });
  },
  components: {
    HelloWorld,
  },
};
</script>
