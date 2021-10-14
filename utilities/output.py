def output_data(data):
    date = 'Datum: {}'.format(data['dagar'][0]['datum'])

    redDay = '\tRöd dag: {}'.format(data['dagar'][0]['röd dag'])

    if len(data['dagar'][0]['namnsdag']) > 1:
        names = '\tNamnsdagar: '
        for i, name in enumerate(data['dagar'][0]['namnsdag'], start=1):
            names += name + ', ' if i < len(
                data['dagar'][0]['namnsdag']) else name
    else:
        names = '\tNamnsdag: {}'.format(data['dagar'][0]['namnsdag'][0])

    if len(data['dagar'][0]['flaggdag']) > 0:
        flagDay = '\tFlaggdag: {}'.format(data['dagar'][0]['flaggdag'])
    else:
        flagDay = ''

    return date + names + redDay + flagDay + '\n'
