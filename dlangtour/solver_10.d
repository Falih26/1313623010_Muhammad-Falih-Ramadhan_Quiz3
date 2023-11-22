module solver_10;
import std.stdio;
import io;

class SortingSolver {
    int[] data;
    int[] indices;

public:
    this(int[] data) {
        this.data = data.dup;
        this.indices = new int[data.length];

        for (int i = 0; i < data.length; i++) {
            indices[i] = i;
        }


        writeln("Original Array: ", this.data);
        writeln("Original Indices: ", indices);
    }

    void solveSortIndexes() {
        // Bubble sort
        for (int i = 0; i < data.length; i++) {
            for (int j = 0; j < data.length - 1; j++) {
                if (data[j] > data[j + 1]) {
                    // Swap data
                    swap(data[j], data[j + 1]);
                    // Swap indices
                    swap(indices[j], indices[j + 1]);
                }
            }
        }

        writeln("Sorted Array: ", data);
        writeln("Sorted Indices: ", indices);
    }

private:
    void swap(ref int a, ref int b) {
        int temp = a;
        a = b;
        b = temp;
    }
}

