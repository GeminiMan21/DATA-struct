#include <stdio.h>
#include <stdlib.h>

// Define the maximum size of the stack
#define MAX_SIZE 100

// Define the stack structure
typedef struct {
    int items[MAX_SIZE];
    int top;
} Stack;

// Function to initialize the stack
void initializeStack(Stack *stack) {
    stack->top = -1;
}

// Function to check if the stack is empty
int isEmpty(Stack *stack) {
    return stack->top == -1;
}

// Function to check if the stack is full
int isFull(Stack *stack) {
    return stack->top == MAX_SIZE - 1;
}

// Function to push an element onto the stack
void push(Stack *stack, int value) {
    if (isFull(stack)) {
        printf("Stack overflow\n");
        return;
    }
    stack->items[++stack->top] = value;
}

// Function to pop an element from the stack
int pop(Stack *stack) {
    if (isEmpty(stack)) {
        printf("Stack underflow\n");
        exit(EXIT_FAILURE);
    }
    return stack->items[stack->top--];
}

// Function to peek the top element of the stack
int peek(Stack *stack) {
    if (isEmpty(stack)) {
        printf("Stack is empty\n");
        exit(EXIT_FAILURE);
    }
    return stack->items[stack->top];
}

int main() {
    // Create a stack
    Stack stack;
    initializeStack(&stack);

    // Push some elements onto the stack
    push(&stack, 10);
    push(&stack, 20);
    push(&stack, 30);

    // Peek at the top element of the stack
    printf("Top element of the stack: %d\n", peek(&stack));

    // Pop elements from the stack and print them
    printf("Popping elements from the stack:\n");
    while (!isEmpty(&stack)) {
        printf("%d\n", pop(&stack));
    }

    return 0;
}
