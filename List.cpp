namespace ListNS {

	template <typename T>
	class List {
	public:
		class Node {
		private:
			Node* next_ = nullptr;
			Node* prev_ = nullptr;
	
		public:
			T key = {};
			Node(T key): key(key) {};
	
			Node* next();
			Node* prev();
			Node* attach(Node* new_node);
			Node* insert_after(Node* new_node);
			Node* insert_before(Node* new_node);
			Node* insert_after(T new_val);
			Node* insert_before(T new_val);
	
		};
		
		using Node_t = typename List<T>::Node;

		List(Node_t* new_node);
		List(const T& new_node);
		List();

		Node_t* head();
		Node_t* tail();
		Node_t* push_back(Node_t* new_node);
		Node_t* push_back(T new_val);
		Node_t* push_front(Node_t* new_node);
		Node_t* push_front(T new_val);

		unsigned long long size();

	private:
		Node_t* head_ = nullptr;
		Node_t* tail_ = nullptr;
		unsigned long long size_ = 0;


	};


	template <typename T>
	List<T>::List(List<T>::Node_t* new_node){
		this->head_ = this->tail_ = new_node;
	}

	template <typename T>
	List<T>::List(const T& new_val){
		this->head_ = this->tail_ = new Node(new_val);
	}

	template <typename T>
	List<T>::List() {}; 

	template <typename T>
	typename List<T>::Node_t* List<T>::Node::next(){
			return this->next_;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::Node::prev(){
		return this->prev_;
	};

	template <typename T>
	typename List<T>::Node_t* List<T>::Node::attach(List<T>::Node_t* new_node){

		this->next_ = new_node;	
		new_node->prev_ = this;

		return new_node;
	}
	
	template <typename T>
	typename List<T>::Node_t* List<T>::Node::insert_after(List<T>::Node_t* new_node){

		auto next_node = this->next_;

		this->attach(new_node);	

		if (next_node != nullptr){
			new_node->attach(next_node);
		}

		return new_node;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::Node::insert_before(List<T>::Node_t* new_node){
		
		if (this->prev_ != nullptr){
			this->prev_->insert_after(new_node);
		}

		else {
			new_node->attach(this);	
		}

		return new_node;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::Node::insert_after(T new_val){
		return this->insert_after(new List<T>::Node_t(new_val));
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::Node::insert_before(T new_val){
		return this->insert_before(new List<T>::Node_t(new_val));
	}

	template <typename T>
	unsigned long long List<T>::size(){
		return this->size_;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::head(){
		return this->head_;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::tail(){
		return this->tail_;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::push_back(typename List<T>::Node_t* new_node){
		
		if (this->tail_ != nullptr){
			this->tail_->insert_after(new_node);
		}

		else {
			this->head_ = this->tail_ = new_node;
		}

		++this->size_;
		return new_node;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::push_back(T new_val){
		return this->push_back(new typename List<T>::Node_t(new_val));
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::push_front(typename List<T>::Node_t* new_node){
		
		if (this->head_ != nullptr){
			this->head_->insert_before(new_node);
		}

		else {
			this->head_ = this->tail_ = new_node;
		}

		++this->size_;
		return new_node;
	}

	template <typename T>
	typename List<T>::Node_t* List<T>::push_front(T new_val){
		return this->push_front(new typename List<T>::Node_t(new_val));
	}
};
