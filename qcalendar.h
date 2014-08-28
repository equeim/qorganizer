#ifndef QCALENDAR_H
#define QCALENDAR_H

#include <QCalendarWidget>
#include <QPainter>
#include <QDate>
#include <QColor>
#include <QSet>


inline uint qHash(const QDate &d)
    {
                return d.year()+d.month()+d.day();
    }


class QCalendar : public QCalendarWidget
{
public:
    QCalendar();
    ~QCalendar();

   void addColoredDate(int year,int month, int day);
   void removeColoredDate(int year,int month,int day);


 protected:
   QSet<QDate> dateSet;

 private:
    virtual void paintCell(QPainter *painter, const QRect &rect, const QDate &date) const;

};

#endif // QCALENDAR_H
