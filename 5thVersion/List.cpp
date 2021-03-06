#pragma once
#include "Node.cpp"

template <typename T>
class List {
	public:
	Node<T>* head_;
	unsigned long size_;

	List(): head_(nullptr), size_(0){}

	void push_front(Node<T>* new_node){

		new_node->next_ = this->head_;
		this->head_ = new_node;
		++this->size_;
	}

	~List() {

		Node<T>* cur = this->head_;
		Node<T>* next = nullptr;

		while (cur != nullptr){
			next = cur->next_;
			delete cur;
			cur = next;
		}
	}
};
