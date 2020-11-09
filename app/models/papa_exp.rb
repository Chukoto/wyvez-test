class PapaExp < ActiveHash::Base
  self.data = [
    { id: 0,  name: '---' },
    { id: 1,  name: '1〜3年未満' },
    { id: 2,  name: '3〜5年' },
    { id: 3,  name: '5〜10年' },
    { id: 4,  name: '10年以上' },
  ]
end