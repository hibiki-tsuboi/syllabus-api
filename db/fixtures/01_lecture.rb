# frozen_string_literal: true

Lecture.insert_all!(
  [
    { id: 1, subject_id: 1, title: 'ガイダンス', date: '20200423', created_at: Time.current, updated_at: Time.current },
    { id: 2, subject_id: 1, title: '確率変数と確率分布', date: '20200430', created_at: Time.current, updated_at: Time.current },
  ]
)
