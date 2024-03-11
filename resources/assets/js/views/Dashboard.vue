<template>
  <div class="animated fadeIn">
    <div class="row">
      <div class="col-sm-6 col-lg-3">
        <div class="social-box facebook">
          <i class="fa fa-tasks"></i>
          <div class="chart-wrapper">
            <social-box-chart-example :data="[65, 59, 84, 84, 51, 55, 40]" height="90"/>
          </div>
          <ul>
            <li>
              <strong>0</strong>
              <span>Danh mục</span>
            </li>
            <li>
              <strong>0</strong>
              <span>Loại danh mục</span>
            </li>
          </ul>
        </div><!--/.social-box-->
      </div><!--/.col-->
      <div class="col-sm-6 col-lg-3">
        <div class="social-box twitter">
          <i class="fa fa-book"></i>
          <div class="chart-wrapper">
            <social-box-chart-example :data="[1, 13, 9, 17, 34, 41, 38]" height="90"/>
          </div>
          <ul>
            <li>
              <strong>0</strong>
              <span>Sản phẩm</span>
            </li>
            <li>
              <strong>0</strong>
              <span>Đã bán</span>
            </li>
          </ul>
        </div><!--/.social-box-->
      </div><!--/.col-->
      <div class="col-sm-6 col-lg-3">
        <div class="social-box linkedin">
          <i class="fa fa-shopping-bag"></i>
          <div class="chart-wrapper">
            <social-box-chart-example :data="[78, 81, 80, 45, 34, 12, 40]" height="90"/>
          </div>
          <ul>
            <li>
              <strong>0</strong>
              <span>Đơn hàng</span>
            </li>
            <li>
              <strong>0</strong>
              <span>Đã duyệt</span>
            </li>
          </ul>
        </div><!--/.social-box-->
      </div><!--/.col-->
      <div class="col-sm-6 col-lg-3">
        <div class="social-box google-plus">
          <i class="fa fa-pencil-square-o"></i>
          <div class="chart-wrapper">
            <social-box-chart-example :data="[35, 23, 56, 22, 97, 23, 64]" height="90"/>
          </div>
          <ul>
            <li>
              <strong>0</strong>
              <span>Tin tức</span>
            </li>
            <li>
              <strong>0</strong>
              <span>Đã xem</span>
            </li>
          </ul>
        </div><!--/.social-box-->
      </div><!--/.col-->
    </div><!--/.row-->
    <OrderList></OrderList>
    <BlogList></BlogList>
  </div>
</template>

<script>
import CardLine1ChartExample from './dashboard/CardLine1ChartExample'
import CardLine2ChartExample from './dashboard/CardLine2ChartExample'
import CardLine3ChartExample from './dashboard/CardLine3ChartExample'
import CardBarChartExample from './dashboard/CardBarChartExample'
import MainChartExample from './dashboard/MainChartExample'
import SocialBoxChartExample from './dashboard/SocialBoxChartExample'
import BlogList from './components/NewsTable'
import OrderList from './components/OrdersTable'
import { Callout } from '../components/'

export default {
  name: 'dashboard',
  components: {
    OrderList,
    BlogList,
    Callout,
    CardLine1ChartExample,
    CardLine2ChartExample,
    CardLine3ChartExample,
    CardBarChartExample,
    MainChartExample,
    SocialBoxChartExample
  },
  data: function () {
    return {
      tableItems: [        
        {
          avatar: { url: '/images/noimg.jpg', status: 'danger' },
          user: { name: 'Friderik Dávid', new: true, registered: 'Jan 1, 2015' },
          country: { name: 'Poland', flag: '/images/noimg.jpg' },
          usage: { value: 43, period: 'Jun 11, 2015 - Jul 10, 2015' },
          payment: { name: 'Amex', icon: 'fa fa-cc-amex' },
          activity: 'Last week'
        }
      ],
      tableFields: {
        avatar: {
          label: '<i class="icon-people"></i>',
          class: 'text-center'
        },
        user: {
          label: 'User'
        },
        country: {
          label: 'Country',
          class: 'text-center'
        },
        usage: {
          label: 'Usage'
        },
        payment: {
          label: 'Payment method',
          class: 'text-center'
        },
        activity: {
          label: 'Activity'
        }
      }
    }
  },
  mounted(){
    this.loading = false;
  },
  methods: {
    variant (value) {
      let $variant
      if (value <= 25) {
        $variant = 'info'
      } else if (value > 25 && value <= 50) {
        $variant = 'success'
      } else if (value > 50 && value <= 75) {
        $variant = 'warning'
      } else if (value > 75 && value <= 100) {
        $variant = 'danger'
      }
      return $variant
    }
  }
};
</script>
