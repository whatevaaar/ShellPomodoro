#include <stdio.h>
#include <time.h>
#include <unistd.h>

void pomodoro(int pomodorosCompletados);
void breaks(int pomodorosCompletados);
void alarma();

int main() {
        int pomodorosCompletados = 0;
        printf("Empezar");
        getchar();
        for (;;){
            pomodoro(pomodorosCompletados);
            breaks(pomodorosCompletados);

        }
    return 0;
}

void pomodoro(int pomodorosCompletados){
    int duracionEnMn = 1;
    for (int i = 0; i < duracionEnMn; i++) {
        printf("%d mn\t Streak: %d", (i + 1),pomodorosCompletados);
        sleep(5);
    }
        alarma();
}

void breaks(int pomodorosCompletados){

}

void alarma(){
    FILE *terminal;

    for (int i = 0; i < 3; i++) {
        terminal = popen("zenity --question --text=\"Do you wish to continue/?\"","w");
        sleep(3);
    }

}