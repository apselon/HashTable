#pragma once
#include "Node.cpp"

template <typename T>
class List {
	public:
	Node<T>* head_;
	unsigned long size_;

	List(): head_(nullptr), size_(0){}

	void push_front(Node<T>* new_node){

		assert(new_node != nullptr);

		new_node->next_ = this->head_;
		this->head_ = new_node;
		++this->size_;
	}
};
