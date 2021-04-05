<template>
  <fieldset class="theme-selector">
    <p class="legend">Select theme</p>
    <label v-for="t in themes" :key="t">
      <input v-model="theme" type="radio" :value="t"/>
      <span class="input-label">{{ t }}</span>
    </label>
  </fieldset>
</template>

<script>
export default {
  name: 'ThemeSelect',

  data() {
    return {
      themes: [
        'regular',
        '8bit'
      ],
      theme: 'regular'
    }
  },

  watch: {
    theme(newTheme, oldTheme) {
      const bodyClasses = document.body.classList

      bodyClasses.remove(`theme-${oldTheme}`)
      bodyClasses.add(`theme-${newTheme}`)
    }
  }
}
</script>
