using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfTest
{
    /// <summary>
    /// MainWindow.xaml の相互作用ロジック
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            var member = new Member
            {
                Id = "1000",
                Name = "fuku518",
                Address = "大阪府"
            };
            DataContext = member;
        }

        // 表示するデータ
        private SampleDataCollection _data = new SampleDataCollection();

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            // データをそのままセットする
            dataGrid.DataContext = _data;
        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedData = dataGrid.SelectedItem as SampleData;
            if (selectedData == null)
            {
                tbIndex.Text = string.Empty;
                tbValue.Text = string.Empty;
            }
            else
            {
                tbIndex.Text = selectedData.Index;
                tbValue.Text = selectedData.Value;
            }
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            string index = this.tbIndex.Text;
            if (string.IsNullOrWhiteSpace(index))
                return;

            string value = this.tbValue.Text;

            var currentData = _data.FirstOrDefault(d => d.Index == index);
            if (currentData == null)
                _data.Add(new SampleData() { Index = index, Value = value });
            else
                currentData.Value = value;
        }
    }
}
