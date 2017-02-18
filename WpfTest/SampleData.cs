using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfTest
{
    class SampleData : INotifyPropertyChanged
    {
        // Indexプロパティ
        string _index;
        public string Index
        {
            get { return _index; }
            set { _index = value; OnPropertyChanged("Index"); }
        }

        // Valueプロパティ
        string _value;
        public string Value
        {
            get { return _value; }
            set { _value = value; OnPropertyChanged("Value"); }
        }

        // INotifyPropertyChangedインターフェースの実装
        public event PropertyChangedEventHandler PropertyChanged;
        void OnPropertyChanged(string pName)
        {
            var handler = this.PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(pName));
        }
    }

    // 表示するデータのコレクション（データバインド可能）
    class SampleDataCollection : ObservableCollection<SampleData>
    {
        public SampleDataCollection()
        {
            // 初期データ
            this.Add(new SampleData() { Index = "1", Value = "Red" });
            this.Add(new SampleData() { Index = "2", Value = "Green" });
            this.Add(new SampleData() { Index = "3", Value = "Blue" });
        }
    }
}
