# frozen_string_literal: true

Lecture.insert_all!(
  [
    { id: 1, title: 'ガイダンス', date: '20200423', created_at: Time.current, updated_at: Time.current },
    { id: 2, title: '確率変数と確率分布', date: '20200430', created_at: Time.current, updated_at: Time.current },
    { id: 3, title: '民法特別研究', date: '20200423', created_at: Time.current, updated_at: Time.current },
    { id: 4, title: '博士論文指導', date: '20200423', created_at: Time.current, updated_at: Time.current },
    { id: 5, title: '教師教育特殊研究', date: '20200430', created_at: Time.current, updated_at: Time.current },
    { id: 6, title: '博士論文指導', date: '20200425', created_at: Time.current, updated_at: Time.current },
  ]
)
