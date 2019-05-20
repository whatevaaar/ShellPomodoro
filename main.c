#include <stdio.h>
#include <time.h>
#include <unistd.h>

#define SESION_MINUTOS 25
#define DESCANSO_MINUTOS 5
#define DESCANSO_LARGO_MINUTOS 5

void pomodoro(int* pomodorosCompletados);
void breakCorto();
void alarmaPomodoro();
void alarmaBreak();
void breakLargo();
void resumirTrasPopup();
int esMultiploDeCuatro(int pomodorosCompletados);
int main() {
        int pomodorosCompletados = 0;
        printf("Empezar\n");
        getchar();
        for (;;){
            pomodoro(&pomodorosCompletados);
            resumirTrasPopup();
            if(esMultiploDeCuatro(pomodorosCompletados)){
                printf("¿Empezar descanso largo?");
                resumirTrasPopup();
                breakLargo();
                continue;
            }

            printf("¿Empezar descanso?");
            resumirTrasPopup();
            breakCorto();
            resumirTrasPopup();
        }
    return 0;
}

int esMultiploDeCuatro(int pomodorosCompletados){
    return pomodorosCompletados != 0 && pomodorosCompletados % 4 == 0;
}

void resumirTrasPopup(){
    getchar();
    getchar();
    return;
}

void pomodoro(int * pomodorosCompletados){
    printf("Streak: %d\nTrabajando\n" ,*pomodorosCompletados);
    for (int i = 0; i < SESION_MINUTOS; i++) {
        sleep(60);
    }

    (*pomodorosCompletados)++ ;
    alarmaPomodoro();
}

void breakCorto(){
    printf("Descansando\n");
    for (int i = 0; i < DESCANSO_LARGO_MINUTOS; i++)
        sleep(60);
    alarmaBreak();
}



void breakLargo(){
    printf("Descanso Largo\n");
    for (int i = 0; i < DESCANSO_MINUTOS; i++)
        sleep(60);
    alarmaBreak();
}

void alarmaPomodoro(){
    FILE *terminal;
    terminal = popen("zenity --info --text=\"Pomodoro Completo\"","w");
    }

    void alarmaBreak(){
    FILE *terminal;
    terminal = popen("zenity --info --text=\"Fin de descanso\"","w");
}
