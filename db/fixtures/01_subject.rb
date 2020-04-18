# frozen_string_literal: true

Subject.insert_all!(
  [
    { id: 1, title: '統計基礎', weekday: 'friday', period: 3, teacher_id: 1, lecture_id: 1, created_at: Time.current, updated_at: Time.current },
    { id: 2, title: '統計基礎', weekday: 'friday', period: 4, teacher_id: 1, lecture_id: 2, created_at: Time.current, updated_at: Time.current },
  ]
)
