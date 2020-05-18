template <typename T>
class Node {
public:
	T val;
	Node* next_;

	Node(T val): val(val), next_(nullptr) {};
};

