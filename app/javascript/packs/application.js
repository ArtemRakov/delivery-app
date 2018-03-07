/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', function() {
    var element = document.querySelector('#food_items')
    if (element != undefined) {
        const app = new Vue({
        el: element,
        data: {
            sandwich: JSON.parse(element.dataset.sandwich),
            fries: JSON.parse(element.dataset.fries),
            starters: JSON.parse(element.dataset.starters),
            rolls: JSON.parse(element.dataset.rolls),
        },
        template: "<App :sandwich='sandwich' :fries='fries' :starters='starters' :rolls='rolls' />",
        components: { App }
        })
    }
})
