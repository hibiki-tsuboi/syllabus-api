# frozen_string_literal: true

Teacher.insert_all!(
  [
    { id: 1, name: '山田太郎', created_at: Time.current, updated_at: Time.current },
    { id: 2, name: '佐藤次郎', created_at: Time.current, updated_at: Time.current },
    { id: 3, name: '田中三郎', created_at: Time.current, updated_at: Time.current },
    { id: 4, name: '鈴木四郎', created_at: Time.current, updated_at: Time.current },
  ]
)
