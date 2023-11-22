import std.stdio;
import solver;
import solver_10;
import std.format;
import io;

int main()
{
    string filepath = "/home/falih/dlangtour/input";
    int[] data = parse_input(filepath);
    SortingSolver solver = new SortingSolver(data);
    solver.solveSortIndexes();
    return 0;
}