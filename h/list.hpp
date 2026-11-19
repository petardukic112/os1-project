//
// Created by os on 7/8/26.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP
#include "print.hpp"

template<typename T>
class List {
private:

    struct Elem {
        T *data;
        Elem *next;

        Elem(T *data, Elem* next) : data(data), next(next) {}
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    bool isEmpty() {
        return head == nullptr;
    }

    void addFirst(T *data) {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) tail = head;
    }
    void addLast(T *data) {
        //printIntegerA((long)data);
        Elem *elem = new Elem(data, nullptr);
        if (tail) {
            tail->next = elem;
            tail = elem;
        } else {
            head = tail = elem;
        }
    }
    T *removeFirst() {
        if (!head) return nullptr;
        Elem *elem = head;
        head = head->next;
        if (!head) tail = nullptr;
        T * value = elem->data;
        delete elem;
        return value;

    }

    T *peekFirst() {
        if (!head) return nullptr;
        return head->data;
    }

    T *removeLast() {
        if (!head) return nullptr;
        Elem *prev = nullptr;

        for (Elem * curr = head; curr != tail; curr = curr->next)
            prev = curr;

        Elem *elem = tail;
        T *value = elem->data;
        delete elem;
        if (!prev) {
            head = tail = nullptr;
        } else {
            tail = prev;
            tail->next = nullptr;
        }
        return value;
    }

    T *peekLast() {
        if (!tail) return nullptr;
        return tail->data;
    }
};
#endif //PROJECT_BASE_LIST_HPP
