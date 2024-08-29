using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuyenCode
{
    public partial class Lich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_HomNay.Text = "Hôm nay ngày " + DateTime.Now.Day.ToString() + " Tháng " + DateTime.Now.Month.ToString() + " Năm " + DateTime.Now.Year.ToString();
        }
        protected void ChonNgay_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = cld_LichVn.SelectedDate;
            lbl_ChonNgay.Text = "Bạn đang chọn ngày: " + selectedDate.ToString("dd/MM/yyyy");
        }
        protected void btn_timming_Click(object sender, EventArgs e)
        {
            DateTime selectedDate = cld_LichVn.SelectedDate;
            DateTime currentDate = DateTime.Now;

            if (selectedDate < currentDate)
            {
                int years = currentDate.Year - selectedDate.Year;
                int months = currentDate.Month - selectedDate.Month;
                int days = currentDate.Day - selectedDate.Day;

                if (days < 0)
                {
                    months--;
                    days += DateTime.DaysInMonth(selectedDate.Year, selectedDate.Month);
                }

                if (months < 0)
                {
                    years--;
                    months += 12;
                }

                lbl_KetQua.Text = $"Từ ngày bạn chọn đến nay là: {years} năm, {months} tháng và {days} ngày.";
            }
            else if (selectedDate > currentDate)
            {
                TimeSpan timeSpan = selectedDate - currentDate;
                int daysRemaining = (int)timeSpan.TotalDays;

                int years = selectedDate.Year - currentDate.Year;
                int months = selectedDate.Month - currentDate.Month;
                int days = selectedDate.Day - currentDate.Day;

                if (days < 0)
                {
                    months--;
                    days += DateTime.DaysInMonth(currentDate.Year, currentDate.Month);
                }

                if (months < 0)
                {
                    years--;
                    months += 12;
                }

                lbl_KetQua.Text = $"Từ ngày hiện tại đến ngày bạn chọn còn: {years} năm, {months} tháng và {days} ngày.";
            }
            else
            {
                lbl_KetQua.Text = "Ngày đã chọn là hôm nay.";
            }
        }
    }
}
