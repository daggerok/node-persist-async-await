const store = require("node-persist");

async function main() {
    await store.init({});
    await store.defaultInstance.setItem('ololo', 'trololo');
    console.log(await store.defaultInstance.getItem('ololo'));
}

main().then(r => console.log('done!'));
