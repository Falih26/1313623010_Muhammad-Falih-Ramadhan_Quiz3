module solver_p29;
import std.stdio;
import io;

void solve_sort_indexes(int[] data){
    //TODO: Solve the solution
    //print!int.printArray(data);
    int[] indices = new int[data.length];
    for(int i=0;i<data.length;i++)
        indices[i] = i;
    
    writeln("Original Array: ", data);
    writeln("Original Indices: ", indices);

    //prepare double loop
    for(int i=0;i<data.length;i++){
        for(int j=0;j<data.length-1;j++){
            if(data[j] > data[j+1]){
                //Todo: swap data
                swap(data[j], data[j+1]);
                swap(indices[j], indices[j + 1]);
            }
        }
    }
    writeln("Sorted Array: ", data);
    writeln("Sorted Indices: ", indices);
}

void swap(ref int a, ref int b){
    int temp = 0;
    temp = b;
    b = a;
    a = temp;
}