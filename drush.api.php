<?php
// $Id: drush.api.php,v 1.2 2009/08/25 19:05:27 weitzman Exp $

/**
 * @file
 * Documentation of the Drush API.
 *
 * All drush commands are invoked in a specific order, using
 * drush-made hooks, very similar to the Drupal hook system.
 *
 * For any command named "hook", the following hooks are called, in
 * order:
 *
 * 1. drush_module_hook_validate()
 * 2. drush_module_pre_hook()
 * 3. drush_module_hook()
 * 4. drush_module_post_hook()
 *
 * If any of those fails, the rollback mechanism is called. It will
 * call, in reverse, all _rollback hooks. So if, for example, the
 * drush_post_hook() call fails, the following hooks will be called:
 *
 * 1. drush_module_post_hook_rollback()
 * 2. drush_module_hook_rollback()
 * 3. drush_module_pre_hook_rollback()
 * 4. drush_module_hook_validate_rollback()
 *
 * Before any command is called, drush_hook_init() is also called.
 *
 * @see includes/command.inc
 *
 * @see drush_hook_init()
 * @see drush_hook_validate()
 * @see drush_pre_hook()
 * @see drush_hook()
 * @see drush_post_hook()
 * @see drush_post_hook_rollback()
 * @see drush_hook_rollback()
 * @see drush_pre_hook_rollback()
 * @see drush_hook_validate_rollback()
 */

/**
 * @addtogroup hooks
 * @{
 */

/**
 * Take action before any command is run. Logging an error stops command execution.
 */
function hook_drush_init() {

}

/**
 * Run before a specific command executes. 
 * 
 * Logging an error stops command execution, and the rollback function (if any)
 * for each hook implementation is invoked
 *
 * @see drush_hook_command_validate_rollback()
 */
function drush_hook_command_validate() {

}

/**
 * Run before a specific command executes. Logging an error stops command execution.
 *
 * Logging an error stops command execution, and the rollback function (if any)
 * for each hook implementation is invoked, in addition to the
 * validate rollback
 *
 * @see drush_hook_pre_command_rollback()
 * @see drush_hook_command_validate_rollback()
 */
function drush_hook_pre_command() {

}

/**
 * Implementation of the actual drush command
 *
 * This is where most of the stuff should happen
 *
 * Logging an error stops command execution, and the rollback function (if any)
 * for each hook implementation is invoked, in addition to pre and
 * validate rollbacks.
 *
 * @see drush_hook_command_rollback()
 * @see drush_hook_pre_command_rollback()
 * @see drush_hook_command_validate_rollback()
 */
function drush_hook_command() {

}

/**
 * Run after a specific command executes. Logging an error stops command execution.
 * 
 * Logging an error stops command execution, and the rollback function (if any)
 * for each hook implementation is invoked, in addition to pre, normal
 * and validate rollbacks.
 *
 * @see drush_hook_post_command_rollback()
 * @see drush_hook_command_rollback()
 * @see drush_hook_pre_command_rollback()
 * @see drush_hook_command_validate_rollback()
 */
function drush_hook_post_command() {

}

/**
 * Take action after any command is run.
 */
function hook_drush_exit() {

}

/**
 * Take action after a project has been downloaded.
 */
function hook_drush_pm_post_install($project, $release, $destination) {

}

/**
 * Take action after a project has been updated.
 */
function hook_pm_post_update($release_name, $release_candidate_version, $project_parent_path) {

}

/**
 * @} End of "addtogroup hooks".
 */
