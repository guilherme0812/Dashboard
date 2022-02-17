<?php
namespace Classes;

use Models\ModelConect;

class ClassEvents extends ModelConect
{

    # Trazer os dados de eventos do banco de dados
    public function getEvents() {
        //$b = $this->conectDB()->prepare("SELECT * FROM events");
        $b = $this->conectDB()->prepare("select events.id, events.meeting_title, events.title, events.description, events.start, events.end, events.FK_userID, users.name, users.lastname, users.color from events inner join users on events.FK_userID = users.id;");
        $b->execute();

        $f = $b->fetchAll(\PDO::FETCH_ASSOC);
        return json_encode($f);
    }


    // Buscar eventos pelo ID
    public function getEventById ($id) {
        $b = $this->conectDB()->prepare("SELECT * FROM events WHERE id=?");
        $b->bindParam(1, $id, \PDO::PARAM_INT);
        $b->execute();
        $f = $b->fetchAll(\PDO::FETCH_ASSOC);
        # $f retorna um array dentro de outro array, logo queremos apenas o array que está dentro
        return $f[0];
    }

    //Usando o DISTINCS
    public function eventsPerPerson() {
        $b = $this->conectDB()->prepare(
            
        "SELECT events.FK_userID, COUNT(events.FK_userID) AS qtd, users.name FROM EVENTS
        INNER JOIN users
        ON events.FK_userID = users.id
        GROUP BY events.FK_userID;"

        );
        $b->execute();
        $f = $b->fetchAll(\PDO::FETCH_ASSOC);
        return $f;
    }
}
?>