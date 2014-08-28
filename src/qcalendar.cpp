#include "qcalendar.h"

QCalendar :: QCalendar()
{

}


void QCalendar :: addColoredDate(int year,int month, int day)
{
    QDate sdate(year,month,day);
    dateSet.insert(sdate);
}


void QCalendar :: removeColoredDate(int year,int month, int day)
{
    QDate sdate(year,month,day);
    dateSet.remove(sdate);
}


void QCalendar :: paintCell(QPainter *painter, const QRect &rect, const QDate &date) const
{
    if((dateSet.contains(date)) && (date != selectedDate())) {
        painter->fillRect(rect, Qt::red);
        painter->save();
        painter->setPen(Qt::white);
        painter->drawText(rect, Qt::AlignCenter, QString::number(date.day()));
        painter->restore();
    }
    else
        QCalendarWidget :: paintCell(painter,rect,date);
}


QCalendar :: ~QCalendar()
{

}
