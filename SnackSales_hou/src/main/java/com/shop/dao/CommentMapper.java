package com.shop.dao;

import com.shop.entity.Comment;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface CommentMapper {
    @Delete({
        "delete from comment",
        "where comment_id = #{commentId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer commentId);

    @Insert({
        "insert into comment (comment_id, user_id, ",
        "product_id, comment_content, ",
        "comment_grade, comment_time)",
        "values (#{commentId,jdbcType=INTEGER}, #{userId,jdbcType=INTEGER}, ",
        "#{productId,jdbcType=INTEGER}, #{commentContent,jdbcType=VARCHAR}, ",
        "#{commentGrade,jdbcType=INTEGER}, #{commentTime,jdbcType=TIMESTAMP})"
    })
    int insert(Comment record);

    int insertSelective(Comment record);

    @Select({
        "select",
        "comment_id, user_id, product_id, comment_content, comment_grade, comment_time",
        "from comment",
        "where comment_id = #{commentId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.CommentMapper.BaseResultMap")
    Comment selectByPrimaryKey(Integer commentId);

    int updateByPrimaryKeySelective(Comment record);

//根据用户Id,获得用户评论列表
    @Select({
            "select",
            "comment_id, user_id, product_id, comment_content, comment_grade, comment_time",
            "from comment",
            "where user_id = #{userId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.CommentMapper.BaseResultMap")
    List<Comment> selectByUserId(int userId);

    @Update({
        "update comment",
        "set user_id = #{userId,jdbcType=INTEGER},",
          "product_id = #{productId,jdbcType=INTEGER},",
          "comment_content = #{commentContent,jdbcType=VARCHAR},",
          "comment_grade = #{commentGrade,jdbcType=INTEGER},",
          "comment_time = #{commentTime,jdbcType=TIMESTAMP}",
        "where comment_id = #{commentId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Comment record);
}