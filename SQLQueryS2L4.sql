select *
from Impiegati
where Eta > 29

select *
from Impiegati
where RedditoMensile >= 800

select *
from Impiegati
where DetrazioneFiscale='True'

select *
from Impiegati
where DetrazioneFiscale='False'

select *
from Impiegati
where Cognome like 'G%'
order by Cognome asc

select count(*) as TotaleImpiegati
from Impiegati

select sum(RedditoMensile) as TotaleRedditi
from Impiegati

select avg(RedditoMensile) as MediaRedditi
from Impiegati

select Top 1 (RedditoMensile) as RedditoPiuAlto
from Impiegati
order by RedditoMensile desc

select top 1 (RedditoMensile) as RedditoPiuBasso
from Impiegati
order by RedditoMensile asc

select *
from Impiegati
where DataAssunzione between '01-01-2022' and '01-01-2023'

DECLARE @tipoImpiego varchar(50) =  'Front-End Developer'

select ii.*
from Impiego as i
Inner join
impiegati as ii ON
i.idimpiego = ii.idimpiego
where i.Tipoimpiego = @tipoimpiego

select avg(eta) as MediaEta
from Impiegati

/*
Create procedure InserisciImpiegato
@IdImpiego int,
@Cognome varchar(50),
@Nome varchar(50),
@CodiceFiscale varchar(16),
@Eta int,
@redditomensile money,
@detrazionefiscale bit,
@DataAssunzione datetime
as
Begin 
insert into Impiegati (IDImpiego, Cognome, Nome, CodiceFiscale, Eta, RedditoMensile, DestrazioneFiscale, DataAssunzione)
values (@IdImpiego, @Cognome, @Nome, @CodiceFiscale, @Eta, @redditomensile, @detrazionefiscale, @DataAssunzione)
END;
*/

/*
Create procedure AggiornaImpiegato
@IdImpiegato int,
@IdImpiego int,
@Cognome varchar(50),
@Nome varchar(50),
@CodiceFiscale varchar(16),
@Eta int,
@redditomensile money,
@detrazionefiscale bit,
@DataAssunzione datetime
as
begin
update Impiegati
set
IDImpiego = @IdImpiego,
Cognome = @Cognome,
Nome = @Nome,
CodiceFiscale = @CodiceFiscale,
Eta = @Eta,
RedditoMensile = @RedditoMensile,
DetrazioneFiscale = @DetrazioneFiscale,
DataAssunzione = @DataAssunzione
Where IDImpiegato = @IdImpiegato;
END;
*/

/*
create procedure EliminaImpiegato
@IdImpiegato int
as
begin
delete from Impiegati
where IdImpiegato = @IdImpiegato;
END;
*/