class Experience < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '０〜１年未満' },
    { id: 2, name: '１〜３年' },
    { id: 3, name: '５〜10年' },
    { id: 4, name: '10年以上' },
  ]
end