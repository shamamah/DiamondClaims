connection: "c53-looker"

fiscal_month_offset: 0
week_start_day: sunday

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: claim_control {

  group_label: "Diamond Claims"
  label: "Diamond Claims"
  view_label: "ClaimControl"

  join: claimant {
    view_label: "Claimant"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim_control.claimcontrol_id} = ${claimant.claimcontrol_id} ;;
  }

  join: claim_control_activity {
    view_label: "ClaimControlActivity"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim_control.claimcontrol_id} = ${claim_control_activity.claimcontrol_id} ;;
  }

  join: claim_feature {
    view_label: "ClaimFeature"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim_control.claimcontrol_id} = ${claim_feature.claimcontrol_id}
      and ${claimant.claimant_num} = ${claim_feature.claimant_num} ;;
  }

  join: claim_financials {
    view_label: "ClaimFinancials"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim_control.claimcontrol_id} = ${claim_financials.claimcontrol_id} ;;
  }

  join: claim_limit {
    view_label: "ClaimLimit"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim_control.claimcontrol_id} = ${claim_limit.claimcontrol_id} ;;
  }

  join: claim_deductible {
    view_label: "ClaimDeductible"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim_control.claimcontrol_id} = ${claim_deductible.claimcontrol_id} ;;
  }

}
