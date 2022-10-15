<script setup lang="ts">
import { reactive } from 'vue'

const state = reactive({ count: 0 });
</script>

<template>
    <p>{{state.count}}</p>
    <button @click="() => {state.count++}">Click me</button>
</template>

<style lang="scss" scoped>
    
</style>