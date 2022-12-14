// index.js
module.exports = () => {
    const data = { users: [] }
    // Create 1000 users
    for (let i = 6; i < 10; i++) {
        data.users.push({ id: i, name: `user${i}`, email: `email${i}`, age: i + 20 })
    }
    return data
}