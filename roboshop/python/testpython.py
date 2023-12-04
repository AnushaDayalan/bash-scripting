import yml

with open('first.yml','r') as file:
    try:
        print(yyml.safe_load(file))
    except yml.YAMLError as exc:
        print(exc)