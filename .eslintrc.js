require('@rushstack/eslint-patch/modern-module-resolution')

module.exports = {
  env: {
    node: true,
    'vue/setup-compiler-macros': true
  },
  extends: [
    'plugin:vue/vue3-recommended',
    '@vue/eslint-config-typescript/recommended',
    '@vue/eslint-config-prettier'
  ],
  rules: {
    // override or add rule settings
    // 'vue/no-unused-vars': 'error'
  }
}
