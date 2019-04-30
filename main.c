#include <stdio.h>
#include <time.h>
#include <unistd.h>

#define SESION_MINUTOS 25
#define DESCANSO_MINUTOS 5
#define DESCANSO_LARGO_MINUTOS 5

void pomodoro(int pomodorosCompletados);
void breakCorto();
void alarma();
void breakLargo();

int main() {
        int pomodorosCompletados = 0;
        printf("Empezar\n");
        getchar();
        for (;;){
            pomodoro(pomodorosCompletados);
            printf("¿Empezar descanso?");
            getchar();
            if(pomodorosCompletados % 4 == 0){
                printf("¿Empezar descanso largo?");
                getchar();
                breakLargo(pomodorosCompletados);
                continue;
            }

            breakCorto(pomodorosCompletados);

        }
    return 0;
}

void pomodoro(int pomodorosCompletados){
    printf("Streak: %d\n" ,pomodorosCompletados);
    for (int i = 0; i < SESION_MINUTOS; i++) {
        sleep(60);
        pomodorosCompletados += 1;
    }
    alarma();
}

void breakCorto(){
    printf("Descano\n");
    for (int i = 0; i < DESCANSO_LARGO_MINUTOS; i++)
        sleep(60);
    alarma();
}


void breakLargo(){
    printf("Descano Largo\n");
    for (int i = 0; i < DESCANSO_MINUTOS; i++)
        sleep(60);
    alarma();
}

void alarma(){
    FILE *terminal;
    terminal = popen("zenity --info --text=\"Pomodor Completo\"","w");
    }
