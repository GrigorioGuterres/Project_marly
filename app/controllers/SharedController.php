<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * tb_prosses_id_visitatnes_option_list Model Action
     * @return array
     */
	function tb_prosses_id_visitatnes_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT naran_visitatnes AS value,naran_visitatnes AS label FROM tb_visitatnes ORDER BY naran_visitatnes";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * tb_prosses_id_estudante_option_list Model Action
     * @return array
     */
	function tb_prosses_id_estudante_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT naran_estudante AS value,naran_estudante AS label FROM tb_estudante ORDER BY naran_estudante";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * tb_prosses_id_idosos_option_list Model Action
     * @return array
     */
	function tb_prosses_id_idosos_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT naran_idosos AS value,naran_idosos AS label FROM tb_idosos ORDER BY naran_idosos";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * tb_user_username_value_exist Model Action
     * @return array
     */
	function tb_user_username_value_exist($val){
		$db = $this->GetModel();
		$db->where("username", $val);
		$exist = $db->has("tb_user");
		return $exist;
	}

	/**
     * tb_user_email_value_exist Model Action
     * @return array
     */
	function tb_user_email_value_exist($val){
		$db = $this->GetModel();
		$db->where("email", $val);
		$exist = $db->has("tb_user");
		return $exist;
	}

}
