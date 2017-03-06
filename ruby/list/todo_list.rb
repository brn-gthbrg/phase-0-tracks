class TodoList

  def initialize(array)
    @todo_list = []
  end

  def get_items(item1, item2)
    @todo_list << [item1, item2]
  end

  def add_item(item)
    @todo_list << item
  end

  def delete_item(item)
    @todo_list.delete(item)
  end

  def retrieve_item(index)
    @todo_list[index]
  end
end