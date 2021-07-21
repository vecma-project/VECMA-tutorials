#include <mpi.h>
#include <stdio.h>

int main(int argc, char **argv) {
  int c_id, c_size;

  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &c_id);
  MPI_Comm_size(MPI_COMM_WORLD, &c_size);

  printf("%d/%d\n", c_id, c_size);

  MPI_Finalize();
  return 0;
}
