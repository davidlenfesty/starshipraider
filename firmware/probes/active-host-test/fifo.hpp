#ifndef FIFO_HPP
#define FIFO_HPP

template<class T, int N>
class Fifo {
    public:
        Fifo() {
            _rd = 0;
            _wr = 0;
            _full = false;
        }

        /// @brief Pushes data into the queue. Returns true if queue is full
        bool push(T data) {
            if (_full) {
                return true;
            }

            _queue[_wr] = data;
            _wr += 1;

            // Handle overflows
            if (_wr == N) {
                _wr = 0;
            }

            // Valid iff _rd can't skip past _wr.
            if (_wr == _rd) {
                _full = true;
            }

            return false;
        }
        /// @brief Pops data off of the queue, into the provided pointer. Returns true if queue is empty.
        bool pop(T* data) {
            if (!_full && _rd == _wr) {
                return true;
            }

            *data = _queue[_rd];
            _rd += 1;

            // Handle overflows
            if (_rd == N) {
                _rd = 0;
            }

            // Assuming no concurrency, so this will always be true,
            // as we are clearing out a space in the queue.
            _full = false;

            return false;
        }

        bool is_empty() {
            return (_rd == _wr) && !_full;
        }

    private:
        uint32_t _wr;
        uint32_t _rd;
        bool _full;
        T _queue[N];
};

#endif // FIFO_HPP
