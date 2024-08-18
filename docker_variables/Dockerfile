# Указываем базовый образ
FROM alpine:3.18

# ARG работает только на этапе сборки (Build stage)
# Можно не задавать значение по умолчанию:
ARG MY_VARIABLE_1
# Задаём значение по умолчанию, снаружи не передаём:
ARG MY_VARIABLE_2="Default ARG_2"
# Задаём значение по умолчанию и передаём значение снаружи:
ARG MY_VARIABLE_3="Default ARG_3"

# Используем переменную. RUN работает только при сборке:
RUN echo "The value of MY_VARIABLE_1 is ${MY_VARIABLE_1}, MY_VARIABLE_2 is ${MY_VARIABLE_2} , MY_VARIABLE_3 is ${MY_VARIABLE_3}"

# ENV работает только на этапе выполнения контейнера (Run stage)
# Без = не работает
# ENV MY_VARIABLE_4 - так указать нельзя
ENV MY_VARIABLE_4=${MY_VARIABLE_4}

# Используем переменную: 
ENTRYPOINT [ "/bin/sh", "-c", "echo ${MY_VARIABLE_4}, ${MY_VARIABLE_5}, ${MY_VARIABLE_6}" ]