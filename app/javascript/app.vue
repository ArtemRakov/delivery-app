<template>
    <div style="position: relative">
        <div class="menu-navbar-fixed">
            <div class="my-container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="menu-navbar">
                            <ul class="menu-navbar__list">
                                <li class="menu-navbar__item">
                                    <a href="#"> Сандвичи </a>
                                </li>
                                <li class="menu-navbar__item">
                                    <a href="#"> Роллы  </a>
                                </li>
                                <li class="menu-navbar__item">
                                    <a href="#"> Картофель  </a>
                                </li>
                                <li class="menu-navbar__item">
                                    <a href="#"> Стартеры  </a>
                                </li>
                                <li class="menu-navbar__item">
                                    <a href="#"> Соусы  </a>
                                </li>
                                <li class="menu-navbar__item">
                                    <a href="#">  Напитки </a>
                                </li>
                                <li class="menu-navbar__item">
                                    <a href="#">  Десерты </a>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <div class="col-md-4">
                        <div class="basket__container">
                            <div class="basket">
                                <a href="#" class="basket__btn"> Сделать заказ </a>
                                <div v-if="Object.keys(basket).length === 0 && basket.constructor === Object" class="basket__empty">
                                        <p class="basket__empty-text"> <span class="basket__empty-text-1"> Здесь отобразятся блюда, </span>  <span class="basket__empty-text-2"> добавленные в корзину. </span> </p>
                                </div>
                                <div v-else class="basket__menu-box">
                                    <div class="basket__menu-list">
                                        <!-- doing weird key so that key will not be the same as menu items -->
                                        <div class="basket__menu" v-for="(value) in basket" :key="'basket' + value.id">
                                            <div class="basket__item">
                                                <div class="basket__actions">
                                                    <img src="../assets/images/minus-red.png" alt="" class="basket__img" @click="removeQuantity(value)">
                                                    <p class="basket__quantity"> {{ value.quantity }} </p>
                                                    <img src="../assets/images/plus-red.png" alt="" class="basket__img" @click="addQuantity(value)">
                                                </div>
                                                <p class="basket__name"> {{ value.name }}  </p>
                                                <p class="basket__price"> {{ value.price }} ₽ </p>
                                            </div>
                                        </div>
                                        <div class="basket__prices">
                                            <div class="basket__goods-box">
                                                <p class="basket__goods-name"> Цена </p>
                                                <p class="basket__goods-price"> {{ priceOfGoods }} ₽ </p>
                                            </div>
                                            <div class="basket__goods-box">
                                                <p class="basket__goods-name"> Доставка </p>
                                                <p class="basket__goods-price"> 200 ₽ </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="basket__total">
                                        <p>Всего</p>
                                        <p> {{ totalPrice }} ₽</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="menu">
            <div class="my-container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="menu__category">
                            <h4 class="menu__category-text"> Сандвичи </h4>
                        </div>
                        <div class="menu__items">
                            <div class="menu-card" @click="addItemToBusket(item)" v-for="item in sandwich" :key="item.id" :style="setColor(item)">
                                <img :src="getPic(item.photo)" alt="" class="menu-card__img">
                                <div class="menu-card__info">
                                    <p class="menu-card__name"> <span class="menu-card__quantity" v-if="basket[item.id] != undefined "> {{ basket[item.id].quantity }} x </span> {{ item.name }}</p>
                                    <p class="menu-card__price"> {{ item.price }} ₽  </p>
                                </div>
                            </div>
                        </div>

                        <div class="menu__category">
                            <h4 class="menu__category-text"> Роллы </h4>
                        </div>
                        <div class="menu__items">
                            <div class="menu-card" @click="addItemToBusket(item)" v-for="item in rolls" :key="item.id" :style="setColor(item)">
                                <img :src="getPic(item.photo)" alt="" class="menu-card__img">
                                <div class="menu-card__info">
                                    <p class="menu-card__name"> <span class="menu-card__quantity" v-if="basket[item.id] != undefined "> {{ basket[item.id].quantity }} x </span> {{ item.name }}</p>
                                    <p class="menu-card__price"> {{ item.price }} ₽  </p>
                                </div>
                            </div>
                        </div>

                        <div class="menu__category">
                            <h4 class="menu__category-text"> Картофель </h4>
                        </div>
                        <div class="menu__items">
                            <div class="menu-card" @click="addItemToBusket(item)" v-for="item in fries" :key="item.id" :style="setColor(item)">
                                <img :src="getPic(item.photo)" alt="" class="menu-card__img">
                                <div class="menu-card__info">
                                    <p class="menu-card__name"> <span class="menu-card__quantity" v-if="basket[item.id] != undefined "> {{ basket[item.id].quantity }} x </span> {{ item.name }}</p>
                                    <p class="menu-card__price"> {{ item.price }} ₽  </p>
                                </div>
                            </div>
                        </div>

                        <div class="menu__category">
                            <h4 class="menu__category-text"> Стартеры </h4>
                        </div>
                        <div class="menu__items">
                            <div class="menu-card" @click="addItemToBusket(item)" v-for="item in starters" :key="item.id" :style="setColor(item)">
                                <img :src="getPic(item.photo)" alt="" class="menu-card__img">
                                <div class="menu-card__info">
                                    <p class="menu-card__name"> <span class="menu-card__quantity" v-if="basket[item.id] != undefined "> {{ basket[item.id].quantity }} x </span> {{ item.name }}</p>
                                    <p class="menu-card__price"> {{ item.price }} ₽  </p>
                                </div>
                            </div>
                        </div>

                        <div class="menu__category">
                            <h4 class="menu__category-text"> Напитки </h4>
                        </div>
                        <div class="menu__items">
                            <div class="menu-card" @click="addItemToBusket(item)" v-for="item in drinks" :key="item.id" :style="setColor(item)">
                                <img :src="getPic(item.photo)" alt="" class="menu-card__img">
                                <div class="menu-card__info">
                                    <p class="menu-card__name"> <span class="menu-card__quantity" v-if="basket[item.id] != undefined "> {{ basket[item.id].quantity }} x </span> {{ item.name }}</p>
                                    <p class="menu-card__price"> {{ item.price }} ₽  </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['sandwich', 'fries', 'starters', 'rolls', 'drinks'],
    data() {
        return {
            basket: {},
            total: 0
        }
    },
    methods: {
        addItemToBusket(item) {
            var key = item.id
            if (this.basket[key] == undefined) {
                this.$set(this.basket, key, { id: item.id, name: item.name, price: item.price, quantity: 1 })
            }
            else {
                this.basket[key].quantity += 1
            }
            //                          FOR ARRAY basket
            // var index = this.basket.findIndex(x => x.name === item.name);
            // if (index === -1) {
            //     this.basket.push({id: item.id, name: item.name, price: item.price, quantity: 1 })
            // }
            // else {
            //     var found = this.basket.find( e => e.name === item.name )
            //     found.quantity += 1
            // }

        },
        removeQuantity(item) {
            item.quantity -= 1
            if (item.quantity < 1) {
                delete this.basket[item.id]
            }
        },

        addQuantity(item) {
            item.quantity += 1
        },

        getPic(url) {
            // return './assets/' + url + '.png';
            return require(`../assets/images/mcdonalds/${url}`)
        },

        setColor(item) {
            if (this.basket[item.id] == undefined) {
                return
            }
            else {
                return 'border-left: 4px solid #D23333'
            }
        }
    },
    computed: {
        priceOfGoods() {
            var total = 0
            Object.keys(this.basket).forEach( (e) => {
                total += (this.basket[e].price * this.basket[e].quantity)
            })

            return total
        },

        totalPrice() {
            return this.priceOfGoods + 200
        }
    },
    watch: {
        basket: {
            deep: true,

            handler(val) {
                var stringify = JSON.stringify(this.basket)
                localStorage.setItem('basket', stringify)
            }
        }
    },
    mounted() {
        var retrievedObject = localStorage.getItem('basket')
        // retrievedObject ? var exist = true : var exist = false
        if (retrievedObject) {
            var exist = true
        }
        else {
            var exist = false
        }

        if (exist) {
            this.basket = JSON.parse(retrievedObject)
        }
        else {
        }
    }
}
</script>

<style>

</style>
