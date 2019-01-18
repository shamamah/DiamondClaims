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

explore: claim {

  group_label: "Diamond Claims"
  label: "Diamond Claims"
  view_label: "Claim"

  sql_always_where: ${claim_number} > ''  ;;

  join: claim_activity {
    view_label: "Claim Activity"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim.claimcontrol_id} = ${claim_activity.claimcontrol_id} ;;
  }

  join: claim_activity_code {
    view_label: "Claim Activity Code"
    type: inner
    relationship: one_to_many
    sql_on: ${claim_activity_code.claimactivitycode_id} = ${claim_activity.claimactivitycode_id} ;;
  }

  join: claim_coverage {
    view_label: "Claim Coverage"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim.claimcontrol_id} = ${claim_coverage.claimcontrol_id} ;;
  }

  #join: claim_financials {
  #  view_label: "Claim Financials"
  #  type: left_outer
  #  relationship: one_to_many
  #  sql_on: ${claim.claimcontrol_id} = ${claim_financials.claimcontrol_id} ;;
  #}

  join: v_claim_financials_claimant_sum {
    view_label: "Claim"
    type: inner
    relationship: one_to_one
    sql_on: ${claim.claimcontrol_id} = ${v_claim_financials_claimant_sum.claimcontrol_id} ;;
  }

  join: claim_limit {
    view_label: "Claim Limit"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim.claimcontrol_id} = ${claim_limit.claimcontrol_id} ;;
  }

  join: claim_deductible {
    view_label: "Claim Deductible"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim.claimcontrol_id} = ${claim_deductible.claimcontrol_id} ;;
  }

  join: claim_deductible_type {
    view_label: "Claim Deductible Type"
    type: inner
    relationship: one_to_many
    sql_on: ${claim_deductible.claimdeductibletype_id} = ${claim_deductible_type.claimdeductibletype_id} ;;
  }

  join: claim_denial_reason {
    view_label: "Claim Denial Reason"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim_denial_reason.claimdenialreason_id} = ${claim.claimdenialreason_id} ;;
  }

  join: claim_type {
    view_label: "Claim Type"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim.claim_type_id} = ${claim_type.claimtype_id} ;;
  }

  ### CLAIMANT

  join: claimant {
    view_label: "Claimant"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim.claimcontrol_id} = ${claimant.claimcontrol_id} ;;
  }

  join: v_claim_financials_features_sum {
    view_label: "Claimant"
    type: inner
    relationship: one_to_one
    sql_on: ${claimant.claimcontrol_id} = ${v_claim_financials_features_sum.claimcontrol_id}
      and ${claimant.claimant_num} = ${v_claim_financials_features_sum.claimant_num} ;;
  }

  join: claimant_activity {
    view_label: "Claimant Activity"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claimant.claimcontrol_id} = ${claimant_activity.claimcontrol_id}
      and ${claimant.claimant_num} = ${claimant_activity.claimant_num} ;;
  }

  join: claimant_activity_code {
    view_label: "Claimant Activity Code"
    type: inner
    relationship: one_to_many
    sql_on: ${claimant_activity_code.claimactivitycode_id} = ${claimant_activity.claimactivitycode_id} ;;
  }

  join: claimant_address_link {
    view_label: "Claimant Address Link"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claimant.claimcontrol_id} = ${claimant_address_link.claimcontrol_id}
      and ${claimant.claimant_num} = ${claimant_address_link.claimant_num} ;;
  }

  join: claimant_address {
    view_label: "Claimant Address"
    type: inner
    relationship: one_to_one
    sql_on: ${claimant_address_link.address_id} = ${claimant_address.address_id} ;;
  }

  join: claimant_address_source {
    view_label: "Claimant Address Source"
    type: inner
    relationship: one_to_one
    sql_on: ${claimant_address.nameaddresssource_id} = ${claimant_address_source.nameaddresssource_id} ;;
  }

  join: claimant_feature {
    view_label: "Claimant Feature"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claim.claimcontrol_id} = ${claimant_feature.claimcontrol_id}
      and ${claimant.claimant_num} = ${claimant_feature.claimant_num} ;;
  }

  join: v_claim_financials_transactions_sum {
    view_label: "Claimant Feature"
    type: inner
    relationship: one_to_one
    sql_on: ${claimant_feature.claimcontrol_id} = ${v_claim_financials_transactions_sum.claimcontrol_id}
      and ${claimant_feature.claimant_num} = ${v_claim_financials_transactions_sum.claimant_num}
      and ${claimant_feature.claimfeature_num} = ${v_claim_financials_transactions_sum.claimfeature_num} ;;
  }

  join: claimant_feature_denial_reason {
    view_label: "Claimant Feature Denial Reason"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claimant_feature_denial_reason.claimdenialreason_id} = ${claimant_feature.claimdenialreason_id} ;;
  }

  join: claimant_feature_transaction {
    view_label: "Claimant Feature Transaction"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claimant_feature.claimcontrol_id} = ${claimant_feature_transaction.claimcontrol_id}
      and ${claimant_feature.claimant_num} = ${claimant_feature_transaction.claimant_num}
      and ${claimant_feature.claimfeature_num} = ${claimant_feature_transaction.claimfeature_num} ;;
  }

  join: claimant_feature_transaction_category {
    view_label: "Claimant Feature Transaction Category"
    type: left_outer
    relationship: one_to_one
    sql_on: ${claimant_feature_transaction.claimtransactioncategory_id} = ${claimant_feature_transaction_category.claimtransactioncategory_id} ;;
  }

  join: claimant_feature_transaction_payee {
    view_label: "Claimant Feature Transaction Payee"
    type: left_outer
    relationship: one_to_one
    sql_on: ${claimant_feature_transaction.claimcontrol_id} = ${claimant_feature_transaction_payee.claimcontrol_id}
      and ${claimant_feature_transaction.claimant_num} = ${claimant_feature_transaction_payee.claimant_num}
      and ${claimant_feature_transaction.claimfeature_num} = ${claimant_feature_transaction_payee.claimfeature_num}
      and ${claimant_feature_transaction.claimtransaction_num} = ${claimant_feature_transaction_payee.claimtransaction_num} ;;
  }

  join: claimant_feature_transaction_status {
    view_label: "Claimant Feature Transaction Status"
    type: left_outer
    relationship: one_to_one
    sql_on: ${claimant_feature_transaction.claimtransactionstatus_id} = ${claimant_feature_transaction_status.claimtransactionstatus_id} ;;
  }

  join: claimant_feature_transaction_type {
    view_label: "Claimant Feature Transaction Type"
    type: left_outer
    relationship: one_to_one
    sql_on: ${claimant_feature_transaction.claimtransactiontype_id} = ${claimant_feature_transaction_type.claimtransactiontype_id} ;;
  }

  join: claimant_financials_eop {
    view_label: "Claimant Financials MTD"
    type: left_outer
    relationship: one_to_many
    sql_on: ${claimant_feature_transaction.claimcontrol_id} = ${claimant_financials_eop.claimcontrol_id}
      and ${claimant_feature_transaction.claimant_num} = ${claimant_financials_eop.claimant_num}
      and ${claimant_feature_transaction.claimfeature_num} = ${claimant_financials_eop.claimfeature_num}
      and ${claimant_financials_eop.claimeoplevel_id} = 3 ;;
        # ${claimant_financials_eop.claimeoplevel_id} = 3 is for MTD
    }

    join: claimant_injury {
      view_label: "Claimant Injury"
      type: left_outer
      relationship: one_to_many
      sql_on: ${claimant.claimcontrol_id} = ${claimant_injury.claimcontrol_id}
        and ${claimant.claimant_num} = ${claimant_injury.claimant_num} ;;
    }

    join: claimant_injury_type_category {
      view_label: "Claimant Injury Type Category"
      type: left_outer
      relationship: one_to_many
      sql_on: ${claimant_injury_type_category.injurytypecategory_id} = ${claimant_injury.injurytypecategory_id} ;;
    }

    join: claimant_name_link {
      view_label: "Claimant Name Link"
      type: left_outer
      relationship: one_to_many
      sql_on: ${claimant.claimcontrol_id} = ${claimant_name_link.claimcontrol_id}
        and ${claimant.claimant_num} = ${claimant_name_link.claimant_num} ;;
    }

    join: claimant_name {
      view_label: "Claimant Name"
      type: inner
      relationship: one_to_one
      sql_on: ${claimant_name_link.name_id} = ${claimant_name.name_id} ;;
    }

    join: claimant_name_source {
      view_label: "Claimant Name Source"
      type: inner
      relationship: one_to_one
      sql_on: ${claimant_name.nameaddresssource_id} = ${claimant_name_source.nameaddresssource_id} ;;
    }

    join: claimant_type {
      view_label: "Claimant Type"
      type: inner
      relationship: one_to_many
      sql_on: ${claimant.claimanttype_id} = ${claimant_type.claimanttype_id} ;;
    }


  }
