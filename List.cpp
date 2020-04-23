namespace List{

	template <typename T>
	class Node_t {
	private:
		Node_t<T>* next_ = nullptr;
		Node_t<T>* prev_ = nullptr;

	public:
		T key = {};
		Node_t(T key): key(key) {};

		Node_t* next(){
			return this->next_;
		};

		Node_t* prev(){
			return this->prev_;
		};

		Node_t* attach(Node_t* new_node){

			this->next_ = new_node;	
			new_node->prev_ = this;

			return new_node;
		}
		
		Node_t* insert_after(Node_t* new_node){

			auto next_node = this->next_;

			this->attach(new_node);	

			if (next_node != nullptr){
				new_node->attach(next_node);
			}

			return new_node;
		}

		Node_t* insert_before(Node_t* new_node){
			
			if (this->prev_ != nullptr){
				this->prev_->insert_after(new_node);
			}

			else {
				new_node->attach(this);	
			}

			return new_node;
		}

		Node_t* insert_after(T new_val){
			return this->insert_after(new Node_t<T>(new_val));
		}

		Node_t* insert_before(T new_val){
			return this->insert_before(new Node_t<T>(new_val));
		}

	};


	template <typename T>
	class List_t {
	private:
		Node_t<T>* head_ = nullptr;
		Node_t<T>* tail_ = nullptr;

		unsigned long size_ = 0;

	public:
		Node_t<T>* head(){
			return this->head_;
		}

		Node_t<T>* tail(){
			return this->tail();
		}

		Node_t<T>* push_back(Node_t<T>* new_node){
			
			if (this->tail_ != nullptr){
				this->tail_->insert_after(new_node);
			}

			else {
				//Assert this->head == nullptr
				this->head_ = this->tail_ = new_node;
			}

			return new_node;
		}

		Node_t<T>* push_back(T new_val){
			return this->push_back(new Node_t<T>(new_val));
		}

		Node_t<T>* push_front(Node_t<T>* new_node){
			
			if (this->head_ != nullptr){
				this->head_->insert_before(new_node);
			}

			else {
				//Assert this->head == nullptr
				this->head_ = this->tail_ = new_node;
			}

			return new_node;
		}

		Node_t<T>* push_front(T new_val){
			return this->push_front(new Node_t<T>(new_val));
		}
	};
};
