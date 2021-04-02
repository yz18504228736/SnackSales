package com.shop.biz;

import com.shop.dao.SendinforMapper;
import com.shop.entity.Sendinfor;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SendInforBiz {

        @Resource
        private SendinforMapper sendinforMapper;

        //获取所有配送信息
        public List<Sendinfor> findAllSendInfor(){
            return  sendinforMapper.findAllSendInfor();
        }

        //增加配送信息
        public  int saveSendInfor(Sendinfor sendinfor){
            return sendinforMapper.insert(sendinfor);
        }

        //根据id删除配送信息
        public  int deleteSendInfor(int sendInforId){
            return sendinforMapper.deleteByPrimaryKey(sendInforId);
        }

        //修改配送信息
        public int updateSendInfor(Sendinfor sendinfor){
            return sendinforMapper.updateByPrimaryKey(sendinfor);
        }

        //根据Id获取配送类型
        public Sendinfor selectSendInforById(int sendInforId){
            return sendinforMapper.selectByPrimaryKey(sendInforId);
        }
}
